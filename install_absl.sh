cd /root/tensorflow/tensorflow/contrib/makefile/downloads/absl
bazel build
mkdir -p $tensorflow_root/include/
rsync -avzh --include '*/' --include '*.h' --exclude '*' absl $tensorflow_root/include/