# Update Debian
<pre><code>apt-get update && apt-get upgrade -y && update-grub && sleep 2 && reboot</code></pre>
# Update Ubuntu
<pre><code>apt-get update && apt-get upgrade -y && apt dist-upgrade -y && update-grub && sleep 2 && reboot</code></pre>
# Install
<pre><code>sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl && wget https://raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/setup.sh && chmod +x setup.sh && ./setup.sh</code></pre>
