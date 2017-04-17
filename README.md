[![This project is considered experimental](https://img.shields.io/badge/Status-experimental-red.svg)](https://arp242.net/status/experimental)
# ChatScript.vim
Vim syntax for [ChatScript](https://github.com/bwilcox-1234/ChatScript) topic files.

# Why
I develop all my software possibly using vim editor on a terminal.
There is not a standard ChatScript syntax highlight for vim, so I created this one.

My aim is to use colors to help ChatScript _scriptors_ (developers) to highlight different syntax elements and lower down coding errors.
By example I chose clear different colors for variables `$pemanentvar`, `$$transientvar`, `$_localvar`. 


## Screenshot
### Without ChatScript.vim

In the screenshot here below, how is visualized a topic file (.top), as a standard text file (no colors!)

![](/example_txt.png)

### Using ChatScript.vim

In the screenshot here below, how is visualized a topic file (.top), using ChatScript.vim syntax highlight, with monokai colorscheme

![](/example_cs.png)


## How to install

### Manually

The easiest installation method is to place 

* syntax/ChatScript.vim script into your ~/.vim/syntax/ directory.
* ftdetect/ChatScript.vim script into your ~/.vim/ftdetect/ directory.

### With a plugin manager 

I love [vim-plug](https://github.com/junegunn/vim-plug) plugin manager. 

```vim
" ChatScript.vim syntax highlight 
Plug 'https://github.com/solyaris/ChatScript.vim'
```

## Todo & Contributions
I'm not a vimL expert and neither a vim regex nerd. This is my first try, very draft and possibly erroneous. 

- [x] basic coloring, differentiate: functions, topics, rules, patterns, literals sentences.   
- [x] using different colore for different kind of variables types. 
- [ ] use _regions_ for a better contextual syntax highlight. 


Any suggestion/pull request welcome. Please feel free to contact me via mail for any point.


## Licence


    The MIT License (MIT)

    Copyright (c) 2017 Giorgio Robino

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.


## Contact

- blog: [@solyarisoftware](http://www.twitter.com/solyarisoftware)
- mail: [giorgio.robino@gmail.com](mailto:giorgio.robino@gmail.com)

