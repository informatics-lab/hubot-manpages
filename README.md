# hubot-manpages

[![Build Status](https://travis-ci.org/ClaudeBot/hubot-manpages.svg)](https://travis-ci.org/ClaudeBot/hubot-manpages)
[![devDependency Status](https://david-dm.org/ClaudeBot/hubot-manpages/dev-status.svg)](https://david-dm.org/ClaudeBot/hubot-manpages#info=devDependencies)

A Hubot script for searching, and viewing examples in a collection of simplified, and community-driven man pages (powered by http://tldr-pages.github.io/).

See [`src/manpages.coffee`](src/manpages.coffee) for full documentation.


## Installation via NPM

1. Install the **hubot-manpages** module as a Hubot dependency by running:

    ```
    npm install --save hubot-manpages
    ```

2. Enable the module by adding the **hubot-manpages** entry to your `external-scripts.json` file:

    ```json
    [
        "hubot-manpages"
    ]
    ```

3. Run your bot and see below for available config / commands


## Commands

Command | Listener ID | Description
--- | --- | ---
hubot mp `command` | `manpages.search` | Returns tldr man page / examples for `command`


## Sample Interaction

```
user1>> hubot mp alias
hubot>>

    # alias

    > Creates an alias for a word when used.
    > As the first word of a command.

    - Create a generic alias:

    `alias {{word}}="{{command}}"`

    - Remove an aliased command:

    `unalias {{word}}`

    - Full list of aliased words:

    `alias -p`

    - Turn rm an interative command:

    `alias {{rm}}="{{rm -i}}"`

    - Override la as ls -a:

    `alias {{la}}="{{ls -a}}"`
```
