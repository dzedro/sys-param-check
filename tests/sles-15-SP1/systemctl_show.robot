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


Documentation    Compare static 'systemctl show' values with the default values of the GA version of the OS release.

*** Test Cases ***
Systemctl_show_Version
    Systemctl Show Int    Version    234
Systemctl_show_Features
    Systemctl Show Str    Features    +PAM -AUDIT +SELINUX -IMA +APPARMOR -SMACK +SYSVINIT +UTMP +LIBCRYPTSETUP +GCRYPT -GNUTLS +ACL +XZ +LZ4 +SECCOMP +BLKID -ELFUTILS +KMOD -IDN2 -IDN default-hierarchy=hybrid
Systemctl_show_Virtualization
    Systemctl Show Str    Virtualization    kvm
Systemctl_show_Architecture
    Systemctl Show Str    Architecture    x86-64
Systemctl_show_FirmwareTimestampMonotonic
    Systemctl Show Int    FirmwareTimestampMonotonic    0
Systemctl_show_LoaderTimestampMonotonic
    Systemctl Show Int    LoaderTimestampMonotonic    0
Systemctl_show_LogLevel
    Systemctl Show Str    LogLevel    info
Systemctl_show_LogTarget
    Systemctl Show Str    LogTarget    journal-or-kmsg
Systemctl_show_NFailedUnits
    Systemctl Show Int    NFailedUnits    0
Systemctl_show_NFailedJobs
    Systemctl Show Int    NFailedJobs    0
Systemctl_show_Progress
    Systemctl Show Int    Progress    1
Systemctl_show_Environment_LANG
    Systemctl Show Str    Environment=LANG    en_US.UTF-8 PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
Systemctl_show_ConfirmSpawn
    Systemctl Show Str    ConfirmSpawn    no
Systemctl_show_ShowStatus
    Systemctl Show Str    ShowStatus    no
Systemctl_show_UnitPath
    Systemctl Show Str    UnitPath    /run/systemd/transient /etc/systemd/system /run/systemd/system /run/systemd/generator /usr/lib/systemd/system
Systemctl_show_DefaultStandardOutput
    Systemctl Show Str    DefaultStandardOutput    journal
Systemctl_show_DefaultStandardError
    Systemctl Show Str    DefaultStandardError    journal
Systemctl_show_RuntimeWatchdogUSec
    Systemctl Show Int    RuntimeWatchdogUSec    0
Systemctl_show_ShutdownWatchdogUSec
    Systemctl Show Str    ShutdownWatchdogUSec    10min
Systemctl_show_SystemState
    Systemctl Show Str    SystemState    running
Systemctl_show_DefaultTimerAccuracyUSec
    Systemctl Show Str    DefaultTimerAccuracyUSec    1min
Systemctl_show_DefaultTimeoutStartUSec
    Systemctl Show Str    DefaultTimeoutStartUSec    1min 30s
Systemctl_show_DefaultTimeoutStopUSec
    Systemctl Show Str    DefaultTimeoutStopUSec    1min 30s
Systemctl_show_DefaultRestartUSec
    Systemctl Show Str    DefaultRestartUSec    100ms
Systemctl_show_DefaultStartLimitIntervalSec
    Systemctl Show Int    DefaultStartLimitIntervalSec    10000000
Systemctl_show_DefaultStartLimitBurst
    Systemctl Show Int    DefaultStartLimitBurst    5
Systemctl_show_DefaultCPUAccounting
    Systemctl Show Str    DefaultCPUAccounting    no
Systemctl_show_DefaultBlockIOAccounting
    Systemctl Show Str    DefaultBlockIOAccounting    no
Systemctl_show_DefaultMemoryAccounting
    Systemctl Show Str    DefaultMemoryAccounting    no
Systemctl_show_DefaultTasksAccounting
    Systemctl Show Str    DefaultTasksAccounting    yes
Systemctl_show_DefaultLimitCPU
    Systemctl Show Int    DefaultLimitCPU    18446744073709551615
Systemctl_show_DefaultLimitCPUSoft
    Systemctl Show Int    DefaultLimitCPUSoft    18446744073709551615
Systemctl_show_DefaultLimitFSIZE
    Systemctl Show Int    DefaultLimitFSIZE    18446744073709551615
Systemctl_show_DefaultLimitFSIZESoft
    Systemctl Show Int    DefaultLimitFSIZESoft    18446744073709551615
Systemctl_show_DefaultLimitDATA
    Systemctl Show Int    DefaultLimitDATA    18446744073709551615
Systemctl_show_DefaultLimitDATASoft
    Systemctl Show Int    DefaultLimitDATASoft    18446744073709551615
Systemctl_show_DefaultLimitSTACK
    Systemctl Show Int    DefaultLimitSTACK    18446744073709551615
Systemctl_show_DefaultLimitSTACKSoft
    Systemctl Show Int    DefaultLimitSTACKSoft    8388608
Systemctl_show_DefaultLimitCORE
    Systemctl Show Int    DefaultLimitCORE    18446744073709551615
Systemctl_show_DefaultLimitCORESoft
    Systemctl Show Int    DefaultLimitCORESoft    18446744073709551615
Systemctl_show_DefaultLimitRSS
    Systemctl Show Int    DefaultLimitRSS    18446744073709551615
Systemctl_show_DefaultLimitRSSSoft
    Systemctl Show Int    DefaultLimitRSSSoft    18446744073709551615
Systemctl_show_DefaultLimitNOFILE
    Systemctl Show Int    DefaultLimitNOFILE    4096
Systemctl_show_DefaultLimitNOFILESoft
    Systemctl Show Int    DefaultLimitNOFILESoft    1024
Systemctl_show_DefaultLimitAS
    Systemctl Show Int    DefaultLimitAS    18446744073709551615
Systemctl_show_DefaultLimitASSoft
    Systemctl Show Int    DefaultLimitASSoft    18446744073709551615
Systemctl_show_DefaultLimitNPROC
    Systemctl Show Int    DefaultLimitNPROC    192080
Systemctl_show_DefaultLimitNPROCSoft
    Systemctl Show Int    DefaultLimitNPROCSoft    192080
Systemctl_show_DefaultLimitMEMLOCK
    Systemctl Show Int    DefaultLimitMEMLOCK    65536
Systemctl_show_DefaultLimitMEMLOCKSoft
    Systemctl Show Int    DefaultLimitMEMLOCKSoft    65536
Systemctl_show_DefaultLimitLOCKS
    Systemctl Show Int    DefaultLimitLOCKS    18446744073709551615
Systemctl_show_DefaultLimitLOCKSSoft
    Systemctl Show Int    DefaultLimitLOCKSSoft    18446744073709551615
Systemctl_show_DefaultLimitSIGPENDING
    Systemctl Show Int    DefaultLimitSIGPENDING    192080
Systemctl_show_DefaultLimitSIGPENDINGSoft
    Systemctl Show Int    DefaultLimitSIGPENDINGSoft    192080
Systemctl_show_DefaultLimitMSGQUEUE
    Systemctl Show Int    DefaultLimitMSGQUEUE    819200
Systemctl_show_DefaultLimitMSGQUEUESoft
    Systemctl Show Int    DefaultLimitMSGQUEUESoft    819200
Systemctl_show_DefaultLimitNICE
    Systemctl Show Int    DefaultLimitNICE    0
Systemctl_show_DefaultLimitNICESoft
    Systemctl Show Int    DefaultLimitNICESoft    0
Systemctl_show_DefaultLimitRTPRIO
    Systemctl Show Int    DefaultLimitRTPRIO    0
Systemctl_show_DefaultLimitRTPRIOSoft
    Systemctl Show Int    DefaultLimitRTPRIOSoft    0
Systemctl_show_DefaultLimitRTTIME
    Systemctl Show Int    DefaultLimitRTTIME    18446744073709551615
Systemctl_show_DefaultLimitRTTIMESoft
    Systemctl Show Int    DefaultLimitRTTIMESoft    18446744073709551615
Systemctl_show_DefaultTasksMax
    Systemctl Show Int    DefaultTasksMax    9830
Systemctl_show_TimerSlackNSec
    Systemctl Show Int    TimerSlackNSec    50000
