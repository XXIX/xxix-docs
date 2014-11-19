# XXIX docs builder
Template for client docs - [Demo](http://xxix.github.io/xxix-docs/)


## A mix of Stencil, Jekyll and GitHub pages

### What you need to know

+ Powered by Jekyll, a static site generator. If you don't have it installed, [get it](http://jekyllrb.com/).
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

## You better love writing Markdown

### What you need to know
+ All posts are compiled from Markdown files which are saved in the `_posts` folder.
+ Posts are order by date, in ascending order (oldest first)
+ Post dates are pulled from the file name, e.g. `2014-11-16-getting-started.md` has the date 16th November 2014.
+ Post titles are pulled from the file name, e.g. `2014-11-16-getting-started.md` has the title ‘Getting Started’
+ If something isn’t being compiled properly add an extra line break, Markdown loves line breaks.

***

### Captions

Captions sit out in the right hand side gutter when there’s enough room. To create a caption, you need to wrap the content block in a div and use a block quote.

For example, the following:

<div markdown="1">
  ![My Image](img/screenshot.png)

> #### Caption title  
With some content underneath.
</div>

Can be created by:

{% highlight html %}
<div markdown="1">
  ![My Image](img/screenshot.png)

> #### Caption title  
With some content underneath.
</div>
{% endhighlight %}

***

### Code snippets

Jekyll has built-in support for syntax highlighting of code snippets. To include a code snippet in any post, just use the dedicated Liquid tags.

For example, the following:

{% highlight ruby %}
def show
  @widget = Widget(params[:id])
  respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @widget }
  end
end
{% endhighlight %}

Can be created by:

{% raw %}
{% highlight ruby %}  
def show  
&nbsp;&nbsp;@widget = Widget(params[:id])  
&nbsp;&nbsp;respond_to do |format|  
&nbsp;&nbsp;&nbsp;&nbsp;format.html # show.html.erb  
&nbsp;&nbsp;&nbsp;&nbsp;format.json { render json: @widget }  
&nbsp;&nbsp;end  
end  
{% endhighlight %}  
{% endraw %}
