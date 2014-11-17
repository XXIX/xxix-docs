## A mix of Stencil, Jekyll and GitHub pages

### What you need to know

+ Powered by Jekyll, a static site generator
+ Built on top of [Stencil](http://github.com/micdijkstra/stencil) as a base to provide a set of Scss helpers
+ Configured to be hosted on GitHub pages

### Creating a new set of docs
+ Create a new repository `clientname-docs`
+ Clone the repository locally `git clone git@github.com:XXIX/clientname-docs.git`
+ Copy the docs into the new repository folder
+ Move into the folder `$ cd clientname-docs`
+ Run `$ bundle`
+ Start the jekyll server `$ jekyll serve`
+ View the site locally at [http://localhost:4000](http://localhost:4000)
+ Update the site settings in `_config.yml`
+ Replace logo files in `img` (to ensure everything ‘just works’ keep them the same size as the originals)
+ Add/Edit posts as Markdown in the `_posts` folder
+ Commit your changes to the `gh-pages` branch
+ Push the `gh-pages` branch to GitHub
+ View your site at [http://xxix.github.io/clientname-docs](http://xxix.github.io/clientname-docs)
