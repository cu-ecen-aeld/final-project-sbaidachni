# The defconfig from the buildroot directory we use for qemu builds
QEMU_DEFCONFIG=configs/raspberrypizero2w_defconfig
# The place we store customizations to the qemu configuration
MODIFIED_QEMU_DEFCONFIG=custom_packages/configs/raspberrypizero2w_defconfig
# The defconfig from the buildroot directory we use for the project
TRACKING_DEFAULT_DEFCONFIG=${QEMU_DEFCONFIG}
TRACKING_MODIFIED_DEFCONFIG=${MODIFIED_QEMU_DEFCONFIG}
TRACKING_MODIFIED_DEFCONFIG_REL_BUILDROOT=../${TRACKING_MODIFIED_DEFCONFIG}