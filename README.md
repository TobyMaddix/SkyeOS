# Skye OS
The source code of Skye OS.

<h1>Install & Debuging Apps</h1>
<p>Open the <b>Install</b> app from the launcher and then click <b>Manual Install</b>. <br>The app will guide you through the install process then open the app!</p>

<h1>Skye Script Documentation</h1>

<h3>Introduction</h3>
<p>Skye OS uses <b>Skye Script</b> for its apps. The Syntax is quite similar to <b>C</b> & <b>Python</b>, with its own additional features. Object creation is, for example, incredibly flexible and automated to a high degree for both ease of use and reduction of load times. Here's a rundown of how to program Skye OS!</p>

<h2>Syntax</h2>
<p>Each instruction must be ended with a semi-colon ";".<br>Comments are defined with a double slash "//".</p>

<h2>Variables</h2>
<h3>Creating & Editing</h3>
<p><b>NAME</b> = <b>STRING</b>;</p>
<h3>Defining</h3>
<p>var <b>NAME</b>;</p>
<p>var <b>NAME</b> = <b>STRING</b>;</p>
<h3>Deleting</h3>
<p>del <b>NAME</b>;</p>

<h2>Lists</h2>
<h3>Defining</h3>
<p>list <b>NAME</b>;</p>
<h3>Editing</h3>
<p>list.append <b>NAME</b> <b>STRING</b>;</p>
<p>list.remove <b>NAME</b> <b>ITEM</b>;</p>
<h3>Deleting</h3>
<p>del <b>NAME</b>;</p>

<h2>Functions</h2>
<h3>Creating & Running</h3>
<p><b>NAME</b> | <b>void</b>;</p>
<p><b>NAME</b>;</p>
<p><b>NAME</b> | <b>PARAMS</b>;</p>
<h3>Defining</h3>
<p>sub <b>NAME</b> | <b>void</b>;</p>
<p>sub <b>NAME</b> | <b>PARAMS</b>;</p>

<h2>Instructions</h2>
<p><b>INSTRUCTION</b> <b>PARAMS</b>;</p>

<h2>Parameters</h2>
<p>When setting a parameter, there are a few ways of setting what type of data should be inserted. They are <b>Strings</b>, <b>Numbers</b>, <b>Math Functions</b>, <b>Variables</b> and <b>Lists</b>. Typing in a string with no quotes will throw an error.</p>
<h3>Strings</h3>
<p>Set a string by enclosing it with single or double quote marks like this: <b>"STRING"</b></p>
<h3>Numbers</h3>
<p>Just type in a number: <b>11</b></p>
<h3>Math Functions</h3>
<p>Enclose it with brackets: <b>(FUNCTIONS)</b></p>
<h3>Variables</h3>
<p>Type in the variable name: <b>NAME</b></p>
<h3>Lists</h3>
<p>Type in the list name and item number: <b>NAME</b>#<b>ITEM</b></p>

<h2>Skye Modual</h2>
<p>Skye Script has a set instructions separate from the core set which control parts of the OS. Here's a list of them:</p>
<ul>
  <li>#import NAME DIR;</li>
  <li>#import NAME DIR TYPE;</li>
  <li>#import NAME DIR TYPE as VARNAME;</li>
  <li>cin STRING;</li>
  <li>gin STRING;</li>
  <li>log STRING;</li>
  <li>cast STRING;</li>
  <li>wait STRING;</li>
  <li>input STRING;</li>
  <li>net.server STRING;</li>
  <li>net.client STRING;</li>
</ul>
