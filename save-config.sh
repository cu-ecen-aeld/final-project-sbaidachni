cd `dirname $0`
source shared.sh
mkdir -p custom_packages/configs/
make -C buildroot savedefconfig BR2_DEFCONFIG=${TRACKING_MODIFIED_DEFCONFIG_REL_BUILDROOT}

if [ -e buildroot/.config ] && [ ls buildroot/output/build/linux-*/.config 1> /dev/null 2>&1 ]; then
	grep "BR2_LINUX_KERNEL_CUSTOM_CONFIG_FILE" buildroot/.config > /dev/null
	if [ $? -eq 0 ]; then
		echo "Saving linux defconfig"
		make -C buildroot linux-update-defconfig
	fi
fi