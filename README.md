# Terminal

In the spirit of improving my development sandbox, I set out to look for a better gnome terminal experience. I started out with this boring bash shell terminal:

![Old Terminal](/images/terminal_old.png)

The end result looks as follows: 

![New Terminal](/images/terminal_new.png)

This new shell provides you with a more flamboyant experince by integrating Tmuxinator with Oh-my-fish

### Tmuxinator
---

Fist step install Tmuxinator

	gem install tmuxinator

Then, depending on your default editor, you will have to specify

	export EDITOR='vim'


Create new project with 

	tmuxinator new [project]

where `[project]` is the given name to your Tmuxinator project. 


Start a session with 

	mux [project]

Look at the sample `~/.tmuxinator/project.yml` file to give you an idea of what you can do in different 'windows'. In my case, I am creating 3 windows, one for personal development, one for work, and one for the localhost server. You can get creative. For example, you could auto start 3 windows and launch Vagrant. Since my default shell is still bash, I specify in the `panes` option to start the fish shell. 

### Fish & Oh-my-fish
---

To install Oh-my-fish, you need to install Fish shell v2.1.0 or above. First, let's install Fish. Fish stands for Friendly Interactive Shell. Go to http://fishshell.com/ and select your OS. For me, it is Ubuntu, so I downloaded the .tar.gz file, then 

```
	tar -xzf fish_2.2.0.orig.tar.gz
	cd fish-2.2.0
```
Apply the **Autotools Build**

```
	autoconf
	./configure
	make
	sudo make install
```

If everything worked, you should be able to start you fish shell on your terminal with `$ fish`, you will see that the shell looks different. To go back to bash, simply type `~> bash`. Fish has very interesting features such as autocompletion. That is time saved and you reduce then number of keystrokes.  

Next we want to install the Oh-my-fish framework for managing the Fish configuration 

	url -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish

To play with the style and colouring, you need to install a theme. You can browse themes at https://github.com/oh-my-fish/. In my case, I went ahead with the theme `bobthefish`

	omg install https://github.com/oh-my-fish/theme-bobthefish

This theme is powerful for Git as they use the Powerline to show lots of relevant information to you once you are working in a Git repository.

The final step is to install Powerline and a font. This part is very tricky and I would recommend to read the official documentation on how to do it:

* http://powerline.readthedocs.org/en/master/installation/linux.html
* http://powerline.readthedocs.org/en/master/usage/shell-prompts.html#fish-prompt

# License

MIT