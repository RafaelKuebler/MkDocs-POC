# MkDocs POC

Proof of concept for web documentation generated from [Markdown](https://www.markdownguide.org/) (.md) files using [MkDocs](https://www.mkdocs.org/).

The theme used is [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/).

## Serving and building

The [Makefile](Makefile) defines useful commands to develop locally.

For an overview of available commands, simply run `make` or `make help`.

## Plugins

Used plugins are:

- [minify-plugin](https://github.com/byrnereese/mkdocs-minify-plugin) - minify the resulting HTML, CSS, and JS files
- [awesome-pages-plugin](https://github.com/lukasgeiter/mkdocs-awesome-pages-plugin) - simplify configuring page titles and their order
- [htmlproofer-plugin](https://github.com/manuzhang/mkdocs-htmlproofer-plugin) - validate URLs, including anchors, in rendered html files
- [git-revision-date-localized-plugin](https://github.com/timvink/mkdocs-git-revision-date-localized-plugin) - enable displaying the date of the last git modification of a page

### Other interesting plugins (not used)

- [git-authors-plugin](https://github.com/timvink/mkdocs-git-authors-plugin) - display git authors of a markdown page
- [autolinks-plugin](https://github.com/zachhannum/mkdocs-autolinks-plugin) - simplify relative linking
- [macros-plugin](https://github.com/fralau/mkdocs_macros_plugin) - add macros
- [glightbox](https://github.com/blueswen/mkdocs-glightbox) - enable zooming on images
