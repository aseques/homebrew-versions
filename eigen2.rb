require 'formula'

class Eigen2 < Formula
  homepage 'http://eigen.tuxfamily.org/'
  url 'http://bitbucket.org/eigen/eigen/get/2.0.17.tar.bz2'
  md5 '2dfd1e2765d82c306adbfcd6a0eb324b'

  depends_on 'cmake' => :build

  def install
    mkdir 'eigen-build' do
      system "cmake #{std_cmake_parameters} -DCMAKE_BUILD_TYPE=Release -Dpkg_config_libdir='#{lib}' .."
      system "make install"
    end
  end
end
