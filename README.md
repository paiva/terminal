# Terminal

In the spirit of improving my development sandbox, I set out to look for a better terminal experience. I started out with this boring bash terminal in Ubuntu:

![Old Terminal][images/terminal_old.png]

The end result looks as follows: 

![New Terminal][images/terminal_new.png]

This terminal provides you with a more flamboyant experince by integrating Tmuxinator with Oh-my-fish

### Tmuxinator

Fist step install Tmuxinator

	`gem install tmuxinator`

Then, depending on your default editor, you will have to specify

	`export EDITOR='vim'`


Create new project with 

	`tmuxinator new [project]`

where `[project]` is the given name to your Tmuxinator project. It could be called `ironman`.  


Start a session with 

`mux [project]`

Look at the sample `~/.tmuxinator/project.yml` file

### Oh-my-fish

To install Oh-my-fish, you need to install Fish shell v 2.1.0 or above. 
To install Fish, go to 

```Autoconfig
   ./configuration
   make
   sudo make install
```

# License

MIT