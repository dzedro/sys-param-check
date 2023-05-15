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



*** Test Cases ***
Loginctl_user_EnableWallMessages
    Run Cmd Str Skip    /usr/bin/loginctl show-user -p EnableWallMessages    EnableWallMessages=    no

Loginctl_user_WallMessage
    Run Cmd Empty Skip    /usr/bin/loginctl show-user -p WallMessage    WallMessage=
Loginctl_user_NAutoVTs
    Run Cmd Int Skip    /usr/bin/loginctl show-user -p NAutoVTs    NAutoVTs=    6

Loginctl_user_KillOnlyUsers
    Run Cmd Empty Skip    /usr/bin/loginctl show-user -p KillOnlyUsers    KillOnlyUsers=
Loginctl_user_KillExcludeUsers
    Run Cmd Empty Skip    /usr/bin/loginctl show-user -p KillExcludeUsers    KillExcludeUsers=
Loginctl_user_KillUserProcesses
    Run Cmd Str Skip    /usr/bin/loginctl show-user -p KillUserProcesses    KillUserProcesses=    no

Loginctl_user_RebootToFirmwareSetup
    Run Cmd Str Skip    /usr/bin/loginctl show-user -p RebootToFirmwareSetup    RebootToFirmwareSetup=    no

Loginctl_user_IdleHint
    Run Cmd Str Skip    /usr/bin/loginctl show-user -p IdleHint    IdleHint=    no

Loginctl_user_IdleSinceHint
    Run Cmd Int Skip    /usr/bin/loginctl show-user -p IdleSinceHint    IdleSinceHint=    0

Loginctl_user_IdleSinceHintMonotonic
    Run Cmd Int Skip    /usr/bin/loginctl show-user -p IdleSinceHintMonotonic    IdleSinceHintMonotonic=    0

Loginctl_user_BlockInhibited
    Run Cmd Empty Skip    /usr/bin/loginctl show-user -p BlockInhibited    BlockInhibited=
Loginctl_user_DelayInhibited
    Run Cmd Empty Skip    /usr/bin/loginctl show-user -p DelayInhibited    DelayInhibited=
Loginctl_user_InhibitDelayMaxUSec
    Run Cmd Str Skip    /usr/bin/loginctl show-user -p InhibitDelayMaxUSec    InhibitDelayMaxUSec=    5s

Loginctl_user_HandlePowerKey
    Run Cmd Str Skip    /usr/bin/loginctl show-user -p HandlePowerKey    HandlePowerKey=    poweroff

Loginctl_user_HandleSuspendKey
    Run Cmd Str Skip    /usr/bin/loginctl show-user -p HandleSuspendKey    HandleSuspendKey=    suspend

Loginctl_user_HandleHibernateKey
    Run Cmd Str Skip    /usr/bin/loginctl show-user -p HandleHibernateKey    HandleHibernateKey=    hibernate

Loginctl_user_HandleLidSwitch
    Run Cmd Str Skip    /usr/bin/loginctl show-user -p HandleLidSwitch    HandleLidSwitch=    suspend

Loginctl_user_HandleLidSwitchDocked
    Run Cmd Str Skip    /usr/bin/loginctl show-user -p HandleLidSwitchDocked    HandleLidSwitchDocked=    ignore

Loginctl_user_HoldoffTimeoutUSec
    Run Cmd Str Skip    /usr/bin/loginctl show-user -p HoldoffTimeoutUSec    HoldoffTimeoutUSec=    30s

Loginctl_user_IdleAction
    Run Cmd Str Skip    /usr/bin/loginctl show-user -p IdleAction    IdleAction=    ignore

Loginctl_user_IdleActionUSec
    Run Cmd Str Skip    /usr/bin/loginctl show-user -p IdleActionUSec    IdleActionUSec=    30min

Loginctl_user_PreparingForShutdown
    Run Cmd Str Skip    /usr/bin/loginctl show-user -p PreparingForShutdown    PreparingForShutdown=    no

Loginctl_user_PreparingForSleep
    Run Cmd Str Skip    /usr/bin/loginctl show-user -p PreparingForSleep    PreparingForSleep=    no

Loginctl_user_ScheduledShutdown
    Run Cmd Str Skip    /usr/bin/loginctl show-user -p ScheduledShutdown    ScheduledShutdown=    [unprintable]

Loginctl_user_Docked
    Run Cmd Str Skip    /usr/bin/loginctl show-user -p Docked    Docked=    no

Loginctl_user_RemoveIPC
    Run Cmd Str Skip    /usr/bin/loginctl show-user -p RemoveIPC    RemoveIPC=    no

Loginctl_user_RuntimeDirectorySize
    Run Cmd Int Skip    /usr/bin/loginctl show-user -p RuntimeDirectorySize    RuntimeDirectorySize=    5023031296

Loginctl_user_InhibitorsMax
    Run Cmd Int Skip    /usr/bin/loginctl show-user -p InhibitorsMax    InhibitorsMax=    8192

Loginctl_user_NCurrentInhibitors
    Run Cmd Int Skip    /usr/bin/loginctl show-user -p NCurrentInhibitors    NCurrentInhibitors=    0

Loginctl_user_SessionsMax
    Run Cmd Int Skip    /usr/bin/loginctl show-user -p SessionsMax    SessionsMax=    8192

Loginctl_user_NCurrentSessions
    Run Cmd Int Skip    /usr/bin/loginctl show-user -p NCurrentSessions    NCurrentSessions=    1

