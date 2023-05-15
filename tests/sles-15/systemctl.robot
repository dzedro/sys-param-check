#
#     Copyright 2020 SAP SE Walldorf
#     Author: Michael Trapp
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
##########################################
*** Settings ***
Library    Process
Library    OperatingSystem
Library    /robot/lib/LinuxLab_HRT_Lib.py

Documentation    Compare values form 'systemctl show' with the default values of the GA version of the OS release.

*** Test Cases ***
Systemctl_show_int_Version
    Systemctl Show Int    Version    234
Systemctl_show_int_DefaultLimitCPU
    Systemctl Show Int    DefaultLimitCPU    18446744073709551615
Systemctl_show_int_DefaultTasksMax
    Systemctl Show Int    DefaultTasksMax    18446744073709551615
Systemctl_show_int_DefaultCPUAccounting
    Systemctl Show Str    DefaultCPUAccounting    no
