# RRUG: Suggest a Topic Project

## Overview
This directory contains the Ruby on Rails project that will host our API.  Running this project requires Ruby 1.9.3 or later to be installed on your computer.  The Ember front-end is located at [https://github.com/RiversideJS/ember-topics](https://github.com/RiversideJS/ember-topics).

## Getting Started
First you'll want to make sure your development environment is set up correctly.

### Download this repo from GitHub
Make sure you have downloaded this repo from GitHub onto your computer.  Open a shell and enter this directory.

### Make sure you have ruby 1.9.3. or later installed (2.1.1 recommended)
From your command line, type `ruby -v` and press Enter.  If ruby is installed correctly, this command should output something like the following:

ruby 2.1.1p76 (2014-02-24 revision 45161) [x86_64-darwin12.0]

If you get a "command not found" error, then you do not have ruby on your computer or the path is not being set correctly in your command prompt.

If you have a version less than 1.9.3, you will need to upgrade before running this project.


### Run the bundle command
Type the `bundle` command.  This will fetch Rails 4.1.1 from the internet (if you don't already have it) and any other  dependencies required to run this project.

### Make sure your rails server starts
Type `rails server` into the command prompt.  After it finishes loading, open a web browser and enter `localhost:3000` in the address bar.  This should load a "Hello World" page.

### Run your test suite
We will be using Test Driven Development (TDD) to develop this project.  That means we first write a failing test and then write the code to get our code to pass.  

I have added a single failing test to the project.  This test attempts to connect to /api/v0/topics, and expects to receive an HTTP status code of 200 from the server (which indicates that the connection succeeded).  Our first goal will be getting this test to pass.

To run all tests type `rake spec` into the command prompt.  You should receive a message indicating that the test failed along with some debugging information about why the test failed.
