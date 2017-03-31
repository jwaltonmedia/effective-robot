FROM python:3.6
MAINTAINER James Walton <jwaltonmedia@gmail.com>

RUN apt-get update && \
      apt-get install -y \
      curl \
      nano \
      build-essential \
      cmake \
      g++ \
      git \
      wget \
      unzip \
      yasm \
      pkg-config \
      libqt4-dev \
      libswscale-dev \
      libtbb2 \
      libdc1394-22-dev \
      libdc1394-22 \
      libdc1394-utils \
      libtbb-dev \
      libjpeg-dev \
      libpng-dev \
      libtiff-dev \
      libjasper-dev \
      libavformat-dev \
      libpq-dev \
      libopencv-*

RUN pip install numpy

WORKDIR /
RUN wget https://github.com/Itseez/opencv/archive/3.2.0.zip \
&& unzip 3.2.0.zip \
&& mkdir /opencv-3.2.0/cmake_binary \
&& cd /opencv-3.2.0/cmake_binary \
&& cmake -D BUILD_TIFF=ON \
  -DBUILD_opencv_java=OFF \
  -DWITH_CUDA=ON \
  -DWITH_1394=ON \
  -DENABLE_AVX=ON \
  -DWITH_OPENGL=ON \
  -DWITH_OPENCL=ON \
  -DWITH_IPP=ON \
  -DWITH_QT=YES \
  -DWITH_TBB=ON \
  -DWITH_EIGEN=ON \
  -DWITH_V4L=ON \
  -DBUILD_TESTS=OFF \
  -DBUILD_PERF_TESTS=OFF \
  -DCMAKE_BUILD_TYPE=RELEASE \
  -DCMAKE_INSTALL_PREFIX=$(python3.6 -c "import sys; print(sys.prefix)") \
  -DPYTHON_EXECUTABLE=$(which python3.6) \
  -DPYTHON_INCLUDE_DIR=$(python3.6 -c "from distutils.sysconfig import get_python_inc; print(get_python_inc())") \
  -DPYTHON_PACKAGES_PATH=$(python3.6 -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())") .. \
&& make install \
&& rm /3.2.0.zip \
&& rm -r /opencv-3.2.0

RUN pip install matplotlib flake8 pep8 --upgrade
RUN pip install Flask
