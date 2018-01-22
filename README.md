# Silverstripe Child Hub Page

Simple page type to allow displaying child pages of this page as a
"Hub Page", that can be viewied as either a "list" or "grid".#

This allows for a simple, more visual way of creating more complex site 
trees, without adding lots more complexity to the CMS.

## Author

This module was created by [ilateral](http://www.ilateral.co.uk).

## Installation

You can install this module either manually or via composer.

### Via composer

The default way to do this is to use composer, via:

    composer require i-lateral/silverstripe-childhubpage

### From source / manually

You can download this module either direct from the Silverstripe addons
directory or Github.

If you do, then follow this process:

* Download a Zip or Tarball of this module
* Extract the module into a directory called "childhubpage" in your project
* Run http://www.yoursite.com/dev/build?flush=all

## Usage

Once installed, you can add a "Child Hub Page" page in the CMS, then
add child pages below it.

### Changing display modes

You can view child pages of a `ChildHubPage` in two states:

* List
* Grid

By default, child pages are shown as a `Grid`, but if you want to change
this to display as a list then navigate to your `ChildHubPage` in the 
admin and click `settings`, finally select `List` from the dropdown.

### Adding a sidebar

You can add a sidebar to your hubpages (which can be useful if you are
nesting multiple levels of hub pages).

To do this, navigate navigate to your `ChildHubPage` in the admin and
click `settings`. Finally, click `Show Sidebar`.