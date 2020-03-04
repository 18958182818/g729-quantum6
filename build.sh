BUILD_LIBS=${HOME}/telecom/build_libs
export PATH=${BUILD_LIBS}/bin:${PATH}

# aclocal -I ${BUILD_LIBS}/share/aclocal1.10 -I ${BUILD_LIBS}/libtool/m4 --install

automake --add-missing
./autogen.sh
./configure --prefix=${BUILD_LIBS} \
    --with-pic
 
make
 
make install
