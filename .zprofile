#Custom Bash Scripts
export PATH="$HOME/bin/:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home -v1.8)

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export LDFLAGS="-L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/bzip2/include"
export PATH="/usr/local/opt/bzip2/bin:$PATH"
