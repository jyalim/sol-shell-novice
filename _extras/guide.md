---
layout: page
title: "Instructor Notes"
permalink: /guide/
---
*   Why do we learn to use the shell?
    *   Allows users to automate repetitive tasks
    *   And capture small data manipulation steps that are normally not recorded
        to make research reproducible
*   The Problem
    *   Running the same workflow on several samples can be unnecessarily labour intensive
    *   Manual manipulation of data files:
        *   is often not captured in documentation
        *   is hard to reproduce
        *   is hard to troubleshoot, review, or improve
*   The Shell
    *   Workflows can be automated through the use of shell scripts
    *   Built-in commands allow for easy data manipulation (e.g. sort, grep, etc.)
    *   Every step can be captured in the shell script and allow reproducibility and easy troubleshooting

## Overall

Many people have questioned whether we should still teach the shell.
After all, anyone who wants to rename several thousand data files can
implicitly do so interactively in the Python interpreter, and anyone
who's doing serious data analysis is probably going to do most of their
work inside the IPython Notebook or R Studio.  So why teach the shell?

The first answer is, "Because so much else depends on it." Installing
software, configuring your default editor, and controlling remote
machines frequently assume a basic familiarity with the shell, and with
related ideas like standard input and output.  Many tools also use its
terminology (for example, the `%ls` and `%cd` magic commands in
IPython).

The second answer is, "Because it's an easy way to introduce some
fundamental ideas about how to use computers." As we teach people how to
use the Unix shell, we teach them that they should get the computer to
repeat things (via tab completion, `!` followed by a command number, and
`for` loops) rather than repeating things themselves.  We also teach
them to take things they've discovered they do frequently and save them
for later re-use (via shell scripts), to give things sensible names, and
to write a little bit of documentation (like comment at the top of shell
scripts) to make their future selves' lives better.

The third answer is, "Because it enables use of many domain-specific
tools and compute resources researchers cannot access otherwise."
Familiarity with the shell is very useful for remote accessing machines,
using high-performance computing infrastructure, and running new
specialist tools in many disciplines.  We teach HPC skills here and lay
the groundwork for further development of these skills.  In particular,
understanding the syntax of commands, flags, and help systems is useful
for domain specific tools and understanding the file system (and how to
navigate it) is useful for remote access.

Finally, and perhaps most importantly, teaching people the shell lets us
teach them to think about programming in terms of function composition.
In the case of the shell, this takes the form of pipelines rather than
nested function calls, but the core idea of "small pieces, loosely
joined" is the same.

All of this material can be covered in three hours
as long as learners using Windows do not run into roadblocks such as:

*   not being able to figure out where their home directory is
*   not being able to run a plain text editor; and
*   the shell refusing to run scripts that include DOS line endings.

## Preparing to Teach

*   Use the `data` directory for in-workshop exercises and live coding
    examples.  You can clone the shell-novice directory or use the
    *Download ZIP* button on the right to get the entire [Git
    repository](https://github.com/jyalim/sol-shell-novice). We also now
    provide a zip file of the `data` directory at the [Setup
    page]({{ page.root }}{% link setup.md %}).

*   Website: various practices have been used.
    *   Option 1: Can give links to learners before the lesson so they can follow along,
        catch up,
	and see exercises (particularly if you're following the lesson content without many changes).
    *   Option 2: Don't show the website to the learners during the lesson, as it can be distracting:
        students may read instead of listen, and having another window open is an additional cognitive load.
	*   In any case, make sure to point to website as a post-workshop reference.

*   Content: Unless you have a truly generous amount of time (4+ hours),
    it is likely that you will not cover ALL the material in this lesson
    in a single half-day session.  Plan ahead on what you might skip,
    what you really want to emphasize, etc.

*   Oftentimes these lessons can only be presented in an hour-long
    workshop. Think about what you *need* to present and try to hit that
    target. Motivating the shell and demystfying it is important, as
    well as basic motion commands, but being supercomputer focused, it
    is extremely important to get to job submissions in lesson 8.
    Encourage the audience to come back to the lessons when they can.

*   Exercises: Think in advance about how you might want to handle
    exercises during the lesson.  How are you assigning them (website,
    slide, handout)?  Do you want everyone to try it and then you show
    the solution?  Have a learner show the solution?  Have groups each
    do a different exercise and present their solutions?


*   The [Reference page]({{ page.root }}{% link reference.md %}) can be
    printed out and given to students as a reference, your choice.

*   Other preparation: Feel free to add your own examples or side
    comments, but know that it shouldn't be necessary: the topics and
    commands can be taught as given on the lesson pages.  If you think
    there is a place where the lesson is lacking, feel free to file an
    issue or submit a pull request.

## Teaching Notes

*   Super cool online resource!  <http://explainshell.com/> will dissect
    any shell command you type in and display help text for each piece.
    Additional nice manual tool could be <http://tldr-pages.github.io/>
    with short very descriptive manuals for shell commands, useful
    especially on Windows while using Git BASH where `man` could not
    work.

*   Another super cool online resource is <http://www.shellcheck.net>,
    which will check shell scripts (both uploaded and typed in) for
    common errors.

*   Resources for "splitting" your shell so that recent commands
    remain in view: <https://github.com/rgaiacs/swc-shell-split-window>.

*   Learners can sometimes get trapped within command-line text editors
    such as Vim, Emacs, or Nano.  Closing the terminal emulator and
    opening a new one can be frustrating as learners will have to
    navigate to the correct folder again.  Our recommendation to
    mitigate this problem is that instructors should use the same text
    editor as the learners during workshops (in most cases Nano).

*   Introducing and navigating the filesystem in the shell (covered in
    [Navigating Files and Directories]({{ page.root }}{% link
    _episodes/02-filedir.md %}) section) can be confusing. You may have
    both terminal and GUI file explorer open side by side so learners
    can see the content and file structure while they're using terminal
    to navigate the system.

*   Tab completion sounds like a small thing: it isn't.  Re-running old
    commands using `!123` or `!wc` isn't a small thing either, and
    neither are wildcard expansion and `for` loops.  Each one is an
    opportunity to repeat one of the big ideas of Software Carpentry: if
    the computer *can* repeat it, some programmer somewhere will almost
    certainly have built some way for the computer *to* repeat it.

*   History completion also sounds like a small thing: it isn't. Being
    able to quickly navigate the shell history by typing a letter and
    then using the arrow keys *saves time* and *reduces errors*.
    Even though it takes time getting proficient with it, encouraging
    baby steps with <kbd>control</kbd>+<kbd>r</kbd> for more powerful
    history searches pays off in the long run.

*   Building up a pipeline with four or five stages, then putting it in
    a shell script for re-use and calling that script inside a `for`
    loop, is a great opportunity to show how "seven plus or minus two"
    connects to programming.  Once we have figured out how to do
    something moderately complicated, we make it re-usable and give it a
    name so that it only takes up one slot in working memory rather than
    several.  It is also a good opportunity to talk about exploratory
    programming: rather than designing a program up front, we can do a
    few useful things and then retroactively decide which are worth
    encapsulating for future re-use.

*   If everything is going well, you can drive home the point that file
    extensions are essentially there to help computers (and human
    readers) understand file content and are not a requirement of files
    (covered briefly in [Navigating Files and Directories]({{ page.root
    }}{% link _episodes/02-filedir.md %})).  This can be done in the
    [Pipes and Filters]({{ page.root }}{% link
    _episodes/04-pipefilter.md %}) section by showing that you can
    redirect standard output to a file without the .txt extension (e.g.,
    lengths), and that the resulting file is still a perfectly usable
    text file.  Make the point that if double-clicked in the GUI, the
    computer will probably ask you what you want to do.

*   We have to leave out many important things because of time constraints,
    including file permissions, job control, and SSH.
    If learners already understand the basic material,
    this can be covered instead using the online lessons as guidelines.
    These limitations also have follow-on consequences:

*   It may hard to discuss `#!` (shellbang) without first discussing
    permissions, and permissions are not discussed.  `#!` can also be
    [pretty complicated][shellbang], so even if we did discuss
    permissions, we probably still wouldn't want to discuss `#!`.
    However, on a supercomputer, the scheduler requires it.  It helps to
    remember that `!` is also known as 'bang', and that the shell looks
    to the first line of scripts it is processing for `#!` to determine
    which program should intepret the contents of the script for
    execution.

*   Everyone engaged in this workshop should be interacting with the
    supercomputer. There should be no fiddling with getting a shell
    working on various operating systems. Make sure the audience is
    connected to the supercomputer through a terminal or preferably
    through the web portal.  Please see the latest set of installation
    guidelines for advice, and try it out yourself *before* teaching a
    class.

*  Stay within the commands that are available on the supercomputer.
   For instance, do not teach `zsh` when the base shell is `bash`. 

## Windows

Heavily encourage Windows users to use the web portal.

[shellbang]: http://www.in-ulm.de/~mascheck/various/shebang/
