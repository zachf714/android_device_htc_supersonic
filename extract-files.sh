#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE=supersonic

mkdir -p ../../../vendor/htc/$DEVICE/proprietary

adb pull /system/bin/akmd ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/snd ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/snd8k ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/sound8k ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/spkamp ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/wifitools ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/AdieHWCodecSetting.csv ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/AudioBTID.csv ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/TPA2018.csv ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/WPDB.zip ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/agps_rm ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/firmware/Supersonic_20100204_Sprint_Jack_324016_v2.acdb ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/firmware/default.acdb ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/permissions/com.sprint.hardware.twincamdevice.xml ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/pvasflocal.cfg ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/framework/com.sprint.hardware.twinCamDevice.jar ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libOmxVdec.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libcamera.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libgps.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libgsl.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libhtc_acoustic.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libhtc_ril.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/liboemcamera.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libomx_wmadec_sharedlibrary.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libomx_wmvdec_sharedlibrary.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libpvasfcommon.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libpvasflocalpb.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libpvasflocalpbreg.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libspeech.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/wimaxDumpKmsg ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/apph ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/wimaxDumpLogcat ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/setWiMAXPropDaemond ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/wimax_mtd ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/sequansd ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/getWiMAXPropDaemond ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/wimaxDumpLastKmsg ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/wimaxDhcpRenew ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/wimaxDhcpRelease ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/wimaxAddRoute ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/wimax/sequansd/DefaultTree.xml ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/wimax/sequansd/sequansd_app.xml ../../../vendor/htc/$DEVICE/proprietary

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/htc/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/htc/__DEVICE__/extract-files.sh

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/libgps.so:obj/lib/libgps.so \\
    vendor/htc/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so

# All the blobs necessary for passion
PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/akmd:/system/bin/akmd \\
    vendor/htc/__DEVICE__/proprietary/snd:/system/bin/snd \\
    vendor/htc/__DEVICE__/proprietary/snd8k:/system/bin/snd8k \\
    vendor/htc/__DEVICE__/proprietary/sound8k:/system/bin/sound8k \\
    vendor/htc/__DEVICE__/proprietary/spkamp:/system/bin/spkamp \\
    vendor/htc/__DEVICE__/proprietary/wifitools:/system/bin/wifitools \\
    vendor/htc/__DEVICE__/proprietary/AdieHWCodecSetting.csv:/system/etc/AdieHWCodecSetting.csv \\
    vendor/htc/__DEVICE__/proprietary/AudioBTID.csv:/system/etc/AudioBTID.csv \\
    vendor/htc/__DEVICE__/proprietary/TPA2018.csv:/system/etc/TPA2018.csv \\
    vendor/htc/__DEVICE__/proprietary/WPDB.zip:/system/etc/WPDB.zip \\
    vendor/htc/__DEVICE__/proprietary/agps_rm:/system/etc/agps_rm \\
    vendor/htc/__DEVICE__/proprietary/Supersonic_20100204_Sprint_Jack_324016_v2.acdb:/system/etc/firmware/Supersonic_20100204_Sprint_Jack_324016_v2.acdb \\
    vendor/htc/__DEVICE__/proprietary/default.acdb:/system/etc/firmware/default.acdb \\
    vendor/htc/__DEVICE__/proprietary/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \\
    vendor/htc/__DEVICE__/proprietary/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw \\
    vendor/htc/__DEVICE__/proprietary/com.sprint.hardware.twincamdevice.xml:/system/etc/permissions/com.sprint.hardware.twincamdevice.xml \\
    vendor/htc/__DEVICE__/proprietary/pvasflocal.cfg:/system/etc/pvasflocal.cfg \\
    vendor/htc/__DEVICE__/proprietary/com.sprint.hardware.twinCamDevice.jar:/system/framework/com.sprint.hardware.twinCamDevice.jar \\
    vendor/htc/__DEVICE__/proprietary/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libOmxVdec.so:/system/lib/libOmxVdec.so \\
    vendor/htc/__DEVICE__/proprietary/libcamera.so:/system/lib/libcamera.so \\
    vendor/htc/__DEVICE__/proprietary/libgps.so:/system/lib/libgps.so \\
    vendor/htc/__DEVICE__/proprietary/libgsl.so:/system/lib/libgsl.so \\
    vendor/htc/__DEVICE__/proprietary/libhtc_acoustic.so:/system/lib/libhtc_acoustic.so \\
    vendor/htc/__DEVICE__/proprietary/libhtc_ril.so:/system/lib/libhtc_ril.so \\
    vendor/htc/__DEVICE__/proprietary/liboemcamera.so:/system/lib/liboemcamera.so \\
    vendor/htc/__DEVICE__/proprietary/libomx_wmadec_sharedlibrary.so:/system/lib/libomx_wmadec_sharedlibrary.so \\
    vendor/htc/__DEVICE__/proprietary/libomx_wmvdec_sharedlibrary.so:/system/lib/libomx_wmvdec_sharedlibrary.so \\
    vendor/htc/__DEVICE__/proprietary/libpvasfcommon.so:/system/lib/libpvasfcommon.so \\
    vendor/htc/__DEVICE__/proprietary/libpvasflocalpb.so:/system/lib/libpvasflocalpb.so \\
    vendor/htc/__DEVICE__/proprietary/libpvasflocalpbreg.so:/system/lib/libpvasflocalpbreg.so \\
    vendor/htc/__DEVICE__/proprietary/libspeech.so:/system/lib/libspeech.so \\
    vendor/htc/__DEVICE__/proprietary/wimaxDumpKmsg:/system/bin/wimaxDumpKmsg \\
    vendor/htc/__DEVICE__/proprietary/apph:/system/bin/apph \\
    vendor/htc/__DEVICE__/proprietary/wimaxDumpLogcat:/system/bin/wimaxDumpLogcat \\
    vendor/htc/__DEVICE__/proprietary/setWiMAXPropDaemond:/system/bin/setWiMAXPropDaemond \\
    vendor/htc/__DEVICE__/proprietary/wimax_mtd:/system/bin/wimax_mtd \\
    vendor/htc/__DEVICE__/proprietary/sequansd:/system/bin/sequansd \\
    vendor/htc/__DEVICE__/proprietary/getWiMAXPropDaemond:/system/bin/getWiMAXPropDaemond \\
    vendor/htc/__DEVICE__/proprietary/wimaxDumpLastKmsg:/system/bin/wimaxDumpLastKmsg \\
    vendor/htc/__DEVICE__/proprietary/wimaxDhcpRenew:/system/bin/wimaxDhcpRenew \\
    vendor/htc/__DEVICE__/proprietary/wimaxDhcpRelease:/system/bin/wimaxDhcpRelease \\
    vendor/htc/__DEVICE__/proprietary/wimaxAddRoute:/system/bin/wimaxAddRoute \\
    vendor/htc/__DEVICE__/proprietary/DefaultTree.xml:/system/etc/wimax/sequansd/DefaultTree.xml \\
    vendor/htc/__DEVICE__/proprietary/sequansd_app.xml:/system/etc/wimax/sequansd/sequansd_app.xml
EOF

./setup-makefiles.sh
