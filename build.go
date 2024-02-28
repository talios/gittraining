// CI project for go265
package main

import (
	"context"
	"os"
	"path/filepath"

	"dagger.io/dagger"
)

func main() {
	ctx := context.Background()
	client, _ := dagger.Connect(ctx, dagger.WithLogOutput(os.Stdout))
	defer client.Close()

	path := "target"

	fonts := client.Host().Directory("./fonts")
	src := client.Host().Directory(".", dagger.HostDirectoryOpts{
		Exclude: []string{path, ".git"},
	})

	typst := client.Container().
		From("ghcr.io/typst/typst:latest").
		WithMountedDirectory("/usr/local/share/fonts", fonts).
		WithMountedDirectory("/src", src).
		WithWorkdir("/src").
		WithExec([]string{"mkdir", path}).
		WithExec([]string{"typst", "fonts"}).
		WithExec([]string{"typst", "compile", "docs/gittraining.typ", path + "/gittraining.pdf"})

	outpath := filepath.Join(".", path)
	_ = os.MkdirAll(outpath, os.ModePerm)

	typst.Directory(path).Export(ctx, outpath)
}
