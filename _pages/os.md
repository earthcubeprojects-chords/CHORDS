---
layout: single
title: Install CHORDS For Various Operating Systems
permalink: /gettingstarted/os/
---

<div id="tabs">
  <ul>
    <li><a href="#tabs-Ubuntu">Ubuntu</a></li> <!-- names on the tabs -->
    <li><a href="#tabs-RHEL">RHEL & Centos</a></li>
    <li><a href="#tabs-Macos">Mac</a></li>
    <li><a href="#tabs-W10">W10</a></li>
  </ul>

  <div id="tabs-Ubuntu"> <!-- content under tab -->
  <div id="ub" class="tab-pane active">
  {% highlight sh %}
  sudo -i
  apt-get install docker.io docker-compose git
  {% endhighlight %}
  {% include chords_control.md %}
  </div>
  </div>

  <div id="tabs-RHEL"> <!-- content under tab -->
  <div id="centos7" class="tab-pane">
  {% highlight sh %}
  sudo -i # Or 'su -' if you do not have sudo privileges
  yum -y install epel-release
  yum -y install docker docker-compose
  yum -y install git
  systemctl enable docker
  systemctl start docker
  {% endhighlight %}
  {% include chords_control.md %}
  </div>
  </div>

  <div id="tabs-Macos"> <!-- content under tab -->
  <div id="macos" class="tab-pane">
  <ul>
  <li>Install <a href="https://docs.docker.com/v17.09/docker-for-mac/install/">Docker for Mac</a>.</li>
  <li>Run Docker. Configure its preferences to start Docker automatically. </li>
  <li>Note when you see the whale in the menu bar (upper right corner of your screen) docker is up and running!</li>
  <li>Then in a terminal window:{% include chords_control.md %} </li>
  <li> Once the above script has been run all you need to do to start chords on your computer again is open the terminal and type </li>
  {% highlight sh %}
  cd /var/lib/chords
  python chords_control -- run
  {% endhighlight %}
  </ul>
  </div>
  </div>

  <div id="tabs-W10"> <!-- content under tab -->
  <ul>
  <li>Install <a href="https://docs.docker.com/docker-for-windows/">Docker for Windows</a></li>
  <li>Run Docker  (it may take a minute to start up).</li>
  <li>Install the latest <a href="https://www.python.org/downloads/windows/">Python 2 release </a></li>
  <li>Download <a href="https://curl.haxx.se/download.html">curl.</a> into a directory of your choice.</li>
  <li>Add C:\Python to the Path environment variable.</li>
  <li>Add the curl directory to the Path environment variable.</li>
  <li>For help with curl visit this<a href="https://www.youtube.com/watch?v=8f9DfgRGOBo">video</li>
  <li>Open a PowerShell or Command Line, and type:{% include chords_control.md %}</li>
  </ul>


  </div>
</div>
See the [detailed instructions](control.html) if the Quick Start recipes are not adequate
to get your portal running, and for additional information.
<script>
$("#tabs").tabs();
</script>
