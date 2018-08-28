# Contentful Jodit WYSIWYG Editor

A plugin for the Contentful management console using the Jodit editor.

The summernote editor has a feature/bug where it doesn't save if you paste into the code view and Jodit 'just works' so I switched.

## Installation
- Run the create/update scripts in the scripts directory with the space id as an argument.
- Note: the contenful CLI [must be installed](https://github.com/contentful/contentful-cli#cloud-installation).
    - For more information, see the [contentful documentation](https://github.com/contentful/extensions#managing-extensions)


## Jenkins
The job looks for a Jenkins agent labeled 'contentful-agent.' I'm using [this agent definition](https://github.com/thehighlander/contentful-cli-agent).