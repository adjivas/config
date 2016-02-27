if [[ "$TEMP" == "" ]]; then
  export TEMP=/tmp
fi
if [[ "$PREFIX" == "" ]]; then
  export PREFIX=$HOME/Developer
fi

if [[ "$SHLVL" == "1" ]]; then
  export PATH=$PREFIX/cmake/bin:$PATH
  export DYLD_LIBRARY_PATH=$PREFIX/cmake/lib:$DYLD_LIBRARY_PATH
fi
if [[ ! -e $PREFIX/cmake ]]; then
  mkdir -p $PREFIX/cmake
  mkdir -p $TEMP/cmake
  tar zx -C $TEMP/cmake < <(curl -sSfL https://cmake.org/files/v3.5/cmake-3.5.0-rc1.tar.gz)
  cd $TEMP/cmake/cmake-3.5.0-rc1
  $TEMP/cmake/cmake-3.5.0-rc1/configure --prefix=$PREFIX/cmake
  make -C $TEMP/cmake/cmake all
  make -C $TEMP/cmake/cmake install
fi

if [[ "$SHLVL" == "1" ]]; then
  export PATH=$PREFIX/autoconf/autoconf-2.69/bin:$PATH
  export DYLD_LIBRARY_PATH=$PREFIX/autoconf/autoconf-2.69/lib:$DYLD_LIBRARY_PATH
  export AUTOCONF=$PREFIX/autoconf/autoconf-2.69/bin/autoconf
fi
if [[ ! -e $PREFIX/autoconf ]]; then
  mkdir -p $PREFIX/autoconf
  tar zx -C $PREFIX/autoconf < <(curl -sSfL http://mirror0.babylon.network/gnu/autoconf/autoconf-2.69.tar.gz)
  cd $PREFIX/autoconf/autoconf-2.69
  $PREFIX/autoconf/autoconf-2.69/configure --prefix=$PREFIX/autoconf/autoconf-2.69
  make -C $PREFIX/autoconf/autoconf-2.69 all
  make -C $PREFIX/autoconf/autoconf-2.69 install
fi

if [[ "$SHLVL" == "1" ]]; then
  export PATH=$PREFIX/automake/automake-1.15/bin:$PATH
  export DYLD_LIBRARY_PATH=$PREFIX/automake/automake-1.15/lib:$DYLD_LIBRARY_PATH
  export AUTOMAKE=$PREFIX/automake/automake-1.15/bin/automake
fi
if [[ ! -e $PREFIX/automake ]]; then
  mkdir -p $PREFIX/automake
  tar zx -C $PREFIX/automake < <(curl -sSfL http://mirror0.babylon.network/gnu/automake/automake-1.15.tar.gz)
  cd $PREFIX/automake/automake-1.15
  $PREFIX/automake/automake-1.15/configure --prefix=$PREFIX/automake/automake-1.15
  make -C $PREFIX/automake/automake-1.15 all
  make -C $PREFIX/automake/automake-1.15 install
fi

if [[ "$SHLVL" == "1" ]]; then
  export C_INCLUDE_PATH=$PREFIX/libtool/libtool-2.4.6/include:$C_INCLUDE_PATH
  export CPLUS_INCLUDE_PATH=$PREFIX/libtool/libtool-2.4.6/include:$CPLUS_INCLUDE_PATH
  export PATH=$PREFIX/libtool/libtool-2.4.6/bin:$PATH
  export DYLD_LIBRARY_PATH=$PREFIX/libtool/libtool-2.4.6/lib:$DYLD_LIBRARY_PATH
fi
if [[ ! -e $PREFIX/libtool ]]; then
  mkdir -p $PREFIX/libtool
  tar zx -C $PREFIX/libtool < <(curl -sSfL http://mirror0.babylon.network/gnu/libtool/libtool-2.4.6.tar.gz)
  cd $PREFIX/libtool/libtool-2.4.6
  $PREFIX/libtool/libtool-2.4.6/configure --prefix=$PREFIX/libtool/libtool-2.4.6 --enable-shared
  make -C $PREFIX/libtool/libtool-2.4.6 all
  make -C $PREFIX/libtool/libtool-2.4.6 install
fi

if [[ "$SHLVL" == "1" ]]; then
  export C_INCLUDE_PATH=$PREFIX/gettext/gettext-0.19.7/include:$C_INCLUDE_PATH
  export CPLUS_INCLUDE_PATH=$PREFIX/gettext/gettext-0.19.7/include:$CPLUS_INCLUDE_PATH
  export PATH=$PREFIX/gettext/gettext-0.19.7/bin:$PATH
  export DYLD_LIBRARY_PATH=$PREFIX/gettext/gettext-0.19.7/lib:$DYLD_LIBRARY_PATH
fi
if [[ ! -e $PREFIX/gettext ]]; then
  mkdir -p $PREFIX/gettext
  tar zx -C $PREFIX/gettext < <(curl -sSfL http://mirror0.babylon.network/gnu/gettext/gettext-0.19.7.tar.gz)
  cd $PREFIX/gettext/gettext-0.19.7
  $PREFIX/gettext/gettext-0.19.7/configure --prefix=$PREFIX/gettext/gettext-0.19.7
  make -C $PREFIX/gettext/gettext-0.19.7 all
  make -C $PREFIX/gettext/gettext-0.19.7 install
fi

if [[ "$SHLVL" == "1" ]]; then
  export PATH=$PREFIX/intltool/intltool-0.51.0/bin:$PATH
  export DYLD_LIBRARY_PATH=$PREFIX/intltool/intltool-0.51.0/lib:$DYLD_LIBRARY_PATH
fi
if [[ ! -e $PREFIX/intltool ]]; then
  mkdir -p $PREFIX/intltool
  tar zx -C $PREFIX/intltool < <(curl -sSfL https://launchpad.net/intltool/trunk/0.51.0/+download/intltool-0.51.0.tar.gz)
  cd $PREFIX/intltool/intltool-0.51.0
  $PREFIX/intltool/intltool-0.51.0/configure --prefix=$PREFIX/intltool/intltool-0.51.0
  make -C $PREFIX/intltool/intltool-0.51.0 all
  make -C $PREFIX/intltool/intltool-0.51.0 install
fi

if [[ "$SHLVL" == "1" ]]; then
  export OPENSSL_ROOT_DIR=$PREFIX/openssl/openssl-1.0.2f
  export OPENSSL_LIB_DIR=$PREFIX/openssl/openssl-1.0.2f/lib
  export OPENSSL_LIB_BIB=$PREFIX/openssl/openssl-1.0.2f/bin
  export OPENSSL_INCLUDE_DIR=$PREFIX/openssl/openssl-1.0.2f/include/openssl

  export C_INCLUDE_PATH=$OPENSSL_INCLUDE_DIR:$C_INCLUDE_PATH
  export CPLUS_INCLUDE_PATH=$OPENSSL_INCLUDE_DIR:$CPLUS_INCLUDE_PATH
  export PATH=$OPENSSL_LIB_BIB:$PATH
  export DYLD_LIBRARY_PATH=$OPENSSL_LIB_DIR:$DYLD_LIBRARY_PATH
fi
if [[ ! -e $PREFIX/openssl ]]; then
  mkdir -p $PREFIX/openssl/openssl-1.0.2f
  mkdir -p $TEMP/openssl
  tar zx -C $TEMP/openssl < <(curl -sSfL http://www.openssl.org/source/openssl-1.0.2f.tar.gz)
  cd $TEMP/openssl/openssl-1.0.2f
  $TEMP/openssl/openssl-1.0.2f/configure darwin-i386-cc -fPIC -shared --openssldir=$PREFIX/openssl/openssl-1.0.2f --prefix=$PREFIX/openssl/openssl-1.0.2f
  make -C $TEMP/openssl/openssl-1.0.2f all
  lipo -create $TEMP/openssl/openssl-1.0.2f/libcrypto.1.0.0.dylib -output $PREFIX/openssl/openssl-1.0.2f/libcrypto.1.0.0.dylib
  lipo -create $TEMP/openssl/openssl-1.0.2f/libssl.1.0.0.dylib -output $PREFIX/openssl/openssl-1.0.2f/libssl.1.0.0.dylib
  make -C $TEMP/openssl/openssl-1.0.2f install
fi

if [[ "$SHLVL" == "1" ]]; then
  export PATH=$PREFIX/python/python2.7.2/bin:$PATH
  export DYLD_LIBRARY_PATH=$PREFIX/python/python2.7.2/lib:$DYLD_LIBRARY_PATH

  export PYTHONPATH=$PREFIX/python/python2.7.2/lib/python2.7/site-packages:$PYTHONPATH
fi
if [[ ! -e $PREFIX/python/python2.7.2 ]]; then
  mkdir -p $PREFIX/python/python2.7.2
  mkdir -p $TEMP/python
  tar zx -C $TEMP/python < <(curl -sSfL https://www.python.org/ftp/python/2.7.2/Python-2.7.2.tar.xz)
  cd $TEMP/python/Python-2.7.2
  $TEMP/python/Python-2.7.2/configure --prefix=$PREFIX/python/python2.7.2
  make -C $TEMP/python/Python-2.7.2 all
  make -C $TEMP/python/Python-2.7.2 install
fi

if [[ "$SHLVL" == "1" ]]; then
  export PATH=$PREFIX/libevent/libevent-2.0.22-stable/bin:$PATH
  export DYLD_LIBRARY_PATH=$PREFIX/libevent/libevent-2.0.22-stable/lib:$DYLD_LIBRARY_PATH
fi
if [[ ! -e $PREFIX/libevent ]]; then
  mkdir -p $PREFIX/libevent
  tar zx -C $PREFIX/libevent < <(curl -sSfL https://github.com/libevent/libevent/releases/download/release-2.0.22-stable/libevent-2.0.22-stable.tar.gz)
  cd $PREFIX/libevent/libevent-2.0.22-stable
  $PREFIX/libevent/libevent-2.0.22-stable/configure --prefix=$PREFIX/libevent/libevent-2.0.22-stable CFLAGS="-I$PREFIX/openssl/openssl-1.0.2f/include" LDFLAGS="-L$PREFIX/openssl/openssl-1.0.2f/lib"
  make -C $PREFIX/libevent/libevent-2.0.22-stable all
  make -C $PREFIX/libevent/libevent-2.0.22-stable install
fi

if [[ "$SHLVL" == "1" ]]; then
  export PATH=$PREFIX/redshift/redshift-1.11/bin:$PATH
  export DYLD_LIBRARY_PATH=$PREFIX/redshift/redshift-1.11/lib:$DYLD_LIBRARY_PATH
fi
if [[ ! -e $PREFIX/redshift ]]; then
  mkdir -p $PREFIX/redshift
  mkdir -p $TEMP/redshift
  tar zx -C $TEMP/redshift < <(curl -sSfL https://github.com/jonls/redshift/releases/download/v1.11/redshift-1.11.tar.xz)
  cd $TEMP/redshift/redshift-1.11
  $TEMP/redshift/redshift-1.11/configure --prefix=$PREFIX/redshift/redshift-1.11
  make -C $TEMP/redshift/redshift-1.11 all
  make -C $TEMP/redshift/redshift-1.11 install
fi

if [[ "$SHLVL" == "1" ]]; then
  export PATH=$PREFIX/tig/tig-tig-2.1.1/bin:$PATH
  export DYLD_LIBRARY_PATH=$PREFIX/tig/tig-tig-2.1.1/lib:$DYLD_LIBRARY_PATH
fi
if [[ ! -e $PREFIX/tig ]]; then
  mkdir -p $PREFIX/tig
  tar zx -C $PREFIX/tig < <(curl -sSfL https://github.com/jonas/tig/archive/tig-2.1.1.tar.gz)
  cd $PREFIX/tig/tig-tig-2.1.1
  $PREFIX/tig/tig-tig-2.1.1/autogen.sh
  $PREFIX/tig/tig-tig-2.1.1/configure --prefix=$PREFIX/tig/tig-tig-2.1.1
  make -C $PREFIX/tig/tig-tig-2.1.1 all
  make -C $PREFIX/tig/tig-tig-2.1.1 install
fi

if [[ "$SHLVL" == "1" ]]; then
  export PATH=$PREFIX/llvm/llvm-3.7.1/bin:$PATH
  export DYLD_LIBRARY_PATH=$PREFIX/llvm/llvm-3.7.1/lib:$DYLD_LIBRARY_PATH
fi
if [[ ! -e $PREFIX/llvm ]]; then
  mkdir -p $PREFIX/llvm/llvm-3.7.1
  mkdir -p $TEMP/llvm/llvm-3.7.1.src/build
  tar zx -C $TEMP/llvm < <(curl -sSfL http://llvm.org/releases/3.7.1/llvm-3.7.1.src.tar.xz)
  cd $TEMP/llvm/llvm-3.7.1.src/build
  cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX=$PREFIX/llvm/llvm-3.7.1 $TEMP/llvm/llvm-3.7.1.src
  make -C $TEMP/llvm/llvm-3.7.1.src/build all
  make -C $TEMP/llvm/llvm-3.7.1.src/build install
fi

if [[ "$SHLVL" == "1" ]]; then
  export PATH=$PREFIX/clang/cfe-3.7.1/bin:$PATH
  export DYLD_LIBRARY_PATH=$PREFIX/clang/cfe-3.7.1/lib:$DYLD_LIBRARY_PATH
fi
if [[ ! -e $PREFIX/clang ]]; then
  mkdir -p $PREFIX/clang/cfe-3.7.1
  mkdir -p $TEMP/clang/cfe-3.7.1.src/build
  tar zx -C $TEMP/clang < <(curl -sSfL http://llvm.org/releases/3.7.1/cfe-3.7.1.src.tar.xz)
  cd $TEMP/clang/cfe-3.7.1.src/build
  cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX=$PREFIX/clang/cfe-3.7.1 $TEMP/clang/cfe-3.7.1.src
  make -C $TEMP/clang/cfe-3.7.1.src/build all
  make -C $TEMP/clang/cfe-3.7.1.src/build install
fi

if [[ "$SHLVL" == "1" ]]; then
  export PATH=$PREFIX/rust/bin:$PATH
  export DYLD_LIBRARY_PATH=$PREFIX/rust/lib:$DYLD_LIBRARY_PATH
fi
if [[ ! -e $PREFIX/rust ]]; then
  mkdir -p $PREFIX/rust
  git clone https://github.com/rust-lang/rust.git $TEMP/rust
  cd $TEMP/rust
  $TEMP/rust/configure --prefix=$PREFIX/rust
  make -C $TEMP/rust all
  make -C $TEMP/rust install
fi

if [[ "$SHLVL" == "1" ]]; then
  export PATH=$PREFIX/cargo/bin:$PATH
  export DYLD_LIBRARY_PATH=$PREFIX/cargo/lib:$DYLD_LIBRARY_PATH
fi
if [[ ! -e $PREFIX/cargo ]]; then
  mkdir -p $PREFIX/cargo
  git clone --recursive https://github.com/rust-lang/cargo $TEMP/cargo
  cd $TEMP/cargo
  $TEMP/cargo/configure --local-rust-root=$PREFIX/rust --prefix=$PREFIX/cargo
  make -C $TEMP/cargo/ all
  make -C $TEMP/cargo/ install
fi

if [[ "$SHLVL" == "1" ]]; then
  export PATH=$PREFIX/node/node-v4.1.2-darwin-x64/bin:$PATH
  export DYLD_LIBRARY_PATH=$PREFIX/node/node-v4.1.2-darwin-x64/lib:$DYLD_LIBRARY_PATH
fi
if [[ ! -e $PREFIX/node ]]; then
  mkdir -p $PREFIX/node
  tar zx -C $PREFIX/node < <(curl -sSfL https://nodejs.org/dist/v4.1.2/node-v4.1.2-darwin-x64.tar.gz)
  cd $PREFIX/node/node-v4.1.2-darwin-x64
fi

if [[ "$SHLVL" == "1" ]]; then
  export PATH=$PREFIX/tmux/tmux-2.1/bin:$PATH
  export DYLD_LIBRARY_PATH=$PREFIX/tmux/tmux-2.1/lib:$DYLD_LIBRARY_PATH
fi
if [[ ! -e $PREFIX/tmux ]]; then
  mkdir -p $PREFIX/tmux
  tar zx -C $PREFIX/tmux < <(curl -sSfL https://github.com/tmux/tmux/releases/download/2.1/tmux-2.1.tar.gz)
  cd $PREFIX/tmux/tmux-2.1
  $PREFIX/tmux/tmux-2.1/configure --prefix=$PREFIX/tmux/tmux-2.1 CFLAGS="-I$PREFIX/libevent/libevent-2.0.22-stable/include" LDFLAGS="-L$HOME//Developer/libevent/libevent-2.0.22-stable/lib"
  make -C $PREFIX/tmux/tmux-2.1 all
  make -C $PREFIX/tmux/tmux-2.1 install
  echo -e "set -g status-fg colour232\n\
set -g status-bg colour159\n\
set -g mouse-utf8 off\n\
set -g mouse off\n\
set-window-option -g window-status-fg colour236\n\
set-window-option -g window-status-bg colour159\n\
set-option -g pane-active-border-fg colour196" > $HOME/.tmux.conf
fi

if [[ "$SHLVL" == "1" ]]; then
  export C_INCLUDE_PATH=$PREFIX/sdl2/include/SDL2:$C_INCLUDE_PATH
  export CPLUS_INCLUDE_PATH=$PREFIX/sdl2/include/SDL2:$CPLUS_INCLUDE_PATH
  export PATH=$PREFIX/sdl2/bin:$PATH
  export DYLD_LIBRARY_PATH=$PREFIX/sdl2/lib:$DYLD_LIBRARY_PATH
fi
if [[ ! -e $PREFIX/sdl2 ]]; then
  mkdir -p $PREFIX/sdl2
  mkdir -p $TEMP/sdl2
  tar zx -C $TEMP/sdl2 < <(curl -sSfL https://www.libsdl.org/release/SDL2-2.0.4.tar.gz)
  cd $TEMP/sdl2/SDL2-2.0.4
  $TEMP/sdl2/SDL2-2.0.4/configure --prefix=$PREFIX/sdl2
  make -C $TEMP/sdl2/SDL2-2.0.4 all
  make -C $TEMP/sdl2/SDL2-2.0.4 install
fi

if [[ "$SHLVL" == "1" ]]; then
  export C_INCLUDE_PATH=$PREFIX/sdl2_image/include/SDL2:$C_INCLUDE_PATH
  export CPLUS_INCLUDE_PATH=$PREFIX/sdl2_image/include/SDL2:$CPLUS_INCLUDE_PATH
  export DYLD_LIBRARY_PATH=$PREFIX/sdl2_image/lib:$DYLD_LIBRARY_PATH
fi
if [[ ! -e $PREFIX/sdl2_image ]]; then
  mkdir -p $PREFIX/sdl2_image
  mkdir -p $TEMP/sdl2_image
  tar zx -C $TEMP/sdl2_image < <(curl -sSfL https://www.libsdl.org/projects/SDL_image/release/SDL2_image-2.0.1.tar.gz)
  cd $TEMP/sdl2_image/SDL2_image-2.0.1
  $TEMP/sdl2_image/SDL2_image-2.0.1/configure --prefix=$PREFIX/sdl2_image
  make -C $TEMP/sdl2_image/SDL2_image-2.0.1 all
  make -C $TEMP/sdl2_image/SDL2_image-2.0.1 install
  sh $TEMP/sdl2_image/SDL2_image-2.0.1/install-sh -c -d $PREFIX/sdl2_image/include/SDL2
  /usr/bin/install -c -m 644 SDL_image.h $PREFIX/sdl2_image/include/SDL2
  sh $TEMP/sdl2_image/SDL2_image-2.0.1/install-sh -c -d $PREFIX/sdl2_image/lib/pkgconfig
  /usr/bin/install -c -m 644 SDL2_image.pc $PREFIX/sdl2_image/lib/pkgconfig
fi

if [[ "$SHLVL" == "1" ]]; then
  export C_INCLUDE_PATH=$PREFIX/sdl2_mixer/include/SDL2:$C_INCLUDE_PATH
  export CPLUS_INCLUDE_PATH=$PREFIX/sdl2_mixer/include/SDL2:$CPLUS_INCLUDE_PATH
  export DYLD_LIBRARY_PATH=$PREFIX/sdl2_mixer/lib:$DYLD_LIBRARY_PATH
fi
if [[ ! -e $PREFIX/sdl2_mixer ]]; then
  mkdir -p $PREFIX/sdl2_mixer
  mkdir -p $TEMP/sdl2_mixer
  tar zx -C $TEMP/sdl2_mixer < <(curl -sSfL https://www.libsdl.org/projects/SDL_mixer/release/SDL2_mixer-2.0.1.tar.gz)
  cd $TEMP/sdl2_mixer/SDL2_mixer-2.0.1
  $TEMP/sdl2_mixer/SDL2_mixer-2.0.1/configure --prefix=$PREFIX/sdl2_mixer
  make -C $TEMP/sdl2_mixer/SDL2_mixer-2.0.1 all
  make -C $TEMP/sdl2_mixer/SDL2_mixer-2.0.1 install
fi

if [[ "$SHLVL" == "1" ]]; then
  export C_INCLUDE_PATH=$PREFIX/freetype2/include/freetype2:$C_INCLUDE_PATH
  export CPLUS_INCLUDE_PATH=$PREFIX/freetype2/include/freetype2:$CPLUS_INCLUDE_PATH
  export PATH=$PREFIX/freetype2/bin:$PATH
  export DYLD_LIBRARY_PATH=$PREFIX/freetype2/lib:$DYLD_LIBRARY_PATH
fi
if [[ ! -e $PREFIX/freetype2 ]]; then
  mkdir -p $PREFIX/freetype2
  mkdir -p $TEMP/freetype2
  tar zx -C $TEMP/freetype2 < <(curl -sSfL http://downloads.sourceforge.net/project/freetype/freetype2/2.5.3/freetype-2.5.3.tar.gz)
  cd $TEMP/freetype2/freetype-2.5.3
  $TEMP/freetype2/freetype-2.5.3/configure --prefix=$PREFIX/freetype2
  make -C $TEMP/freetype2/freetype-2.5.3 all
  make -C $TEMP/freetype2/freetype-2.5.3 install
fi

if [[ "$SHLVL" == "1" ]]; then
  export PATH=$PREFIX/mercurial/bin:$PATH
fi
if [[ ! -e $PREFIX/mercurial ]]; then
  mkdir -p $PREFIX/mercurial
  mkdir -p $TEMP/mercurial
  tar zx -C $TEMP/mercurial < <(curl -sSfL https://www.mercurial-scm.org/release/mercurial-3.7.tar.gz)
  cd $TEMP/mercurial/mercurial-3.7
  $PREFIX/python/python2.7.2/bin/python2.7 setup.py install --force --prefix=$PREFIX/mercurial
fi

if [[ "$SHLVL" == "1" ]]; then
  export C_INCLUDE_PATH=$PREFIX/sdl2_ttf/include/SDL2:$C_INCLUDE_PATH
  export CPLUS_INCLUDE_PATH=$PREFIX/sdl2_ttf/include/SDL2:$CPLUS_INCLUDE_PATH
  export DYLD_LIBRARY_PATH=$PREFIX/sdl2_ttf/lib:$DYLD_LIBRARY_PATH
fi
if [[ ! -e $PREFIX/sdl2_ttf ]]; then
  mkdir -p $PREFIX/sdl2_ttf
  mkdir -p $TEMP/sdl2_ttf
  tar zx -C $TEMP/sdl2_ttf < <(curl -sSfL https://www.libsdl.org/projects/SDL_ttf/release/SDL2_ttf-2.0.14.tar.gz)
  cd $TEMP/sdl2_ttf/SDL2_ttf-2.0.14
  $TEMP/sdl2_ttf/SDL2_ttf-2.0.14/configure --prefix=$PREFIX/sdl2_ttf
  make -C $TEMP/sdl2_ttf/SDL2_ttf-2.0.14 all
  make -C $TEMP/sdl2_ttf/SDL2_ttf-2.0.14 install
  sh $TEMP/sdl2_ttf/SDL2_ttf-2.0.14/install-sh -c -d $PREFIX/sdl2_ttf/include/SDL2
  /usr/bin/install -c -m 644 SDL_ttf.h $PREFIX/sdl2_ttf/include/SDL2
  sh $TEMP/sdl2_ttf/SDL2_ttf-2.0.14/install-sh -c -d $PREFIX/sdl2_ttf/lib/pkgconfig
  /usr/bin/install -c -m 644 SDL2_ttf.pc $PREFIX/sdl2_ttf/lib/pkgconfig
fi

if [[ "$SHLVL" == "1" ]]; then
  export PATH=$PREFIX/emscripten/emsdk_portable:$PATH
  export PATH=$PREFIX/emscripten/emsdk_portable/emscripten/incoming:$PATH
  export PATH=$PREFIX/emscripten/emsdk_portable/clang/fastcomp/build_incoming_64/bin:$PATH
  export EM_CONFIG=$HOME/.emscripten
fi
if [[ ! -e $PREFIX/emscripten ]]; then
  mkdir -p $PREFIX/emscripten
  tar zx -C $PREFIX/emscripten < <(curl -sSfL https://s3.amazonaws.com/mozilla-games/emscripten/releases/emsdk-portable.tar.gz)
  cd $PREFIX/emscripten/emsdk_portable
  $PREFIX/emscripten/emsdk_portable/emsdk update
  $PREFIX/emscripten/emsdk_portable/emsdk install sdk-incoming-64bit
  $PREFIX/emscripten/emsdk_portable/emsdk activate sdk-incoming-64bit
fi
