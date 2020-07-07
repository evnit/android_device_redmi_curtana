/*
 * Copyright (C) 2020 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <android-base/logging.h>
#include <android-base/properties.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include "property_service.h"
#include "vendor_init.h"

using android::init::property_set;

void property_override(char const prop[], char const value[])
{
    prop_info *pi;

    pi = (prop_info*) __system_property_find(prop);
    if (pi)
        __system_property_update(pi, value, strlen(value));
    else
        __system_property_add(prop, strlen(prop), value, strlen(value));
}

void load_joyeuse() {
    property_override("ro.product.model", "Note 9 Pro");
    property_override("ro.product.product.model", "Note 9 Pro");
    property_override("ro.product.system.model", "Note 9 Pro");
    property_override("ro.build.description", "joyeuse-user 10 QKQ1.191215.002 V11.0.2.0.QJZMIXM release-keys");
    property_override("ro.build.fingerprint", "google/coral/coral:10/QQ3A.200605.001/6392402:user/release-keys");
    property_override("ro.vendor.build.fingerprint", "google/coral/coral:10/QQ3A.200605.001/6392402:user/release-keys");
    property_override("ro.product.mod_device", "joyeuse_global");
}

void vendor_load_properties() {
        load_joyeuse();
}

