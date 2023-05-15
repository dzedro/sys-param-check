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
Loginctl_seat_EnableWallMessages
    Run Cmd Str Skip    /usr/bin/loginctl show-seat -p EnableWallMessages    EnableWallMessages=    no

Loginctl_seat_WallMessage
    Run Cmd Empty Skip    /usr/bin/loginctl show-seat -p WallMessage    WallMessage=
Loginctl_seat_NAutoVTs
    Run Cmd Int Skip    /usr/bin/loginctl show-seat -p NAutoVTs    NAutoVTs=    6

Loginctl_seat_KillOnlyUsers
    Run Cmd Empty Skip    /usr/bin/loginctl show-seat -p KillOnlyUsers    KillOnlyUsers=
Loginctl_seat_KillExcludeUsers
    Run Cmd Empty Skip    /usr/bin/loginctl show-seat -p KillExcludeUsers    KillExcludeUsers=
Loginctl_seat_KillUserProcesses
    Run Cmd Str Skip    /usr/bin/loginctl show-seat -p KillUserProcesses    KillUserProcesses=    no

Loginctl_seat_RebootToFirmwareSetup
    Run Cmd Str Skip    /usr/bin/loginctl show-seat -p RebootToFirmwareSetup    RebootToFirmwareSetup=    no

Loginctl_seat_IdleHint
    Run Cmd Str Skip    /usr/bin/loginctl show-seat -p IdleHint    IdleHint=    no

Loginctl_seat_IdleSinceHint
    Run Cmd Int Skip    /usr/bin/loginctl show-seat -p IdleSinceHint    IdleSinceHint=    0

Loginctl_seat_IdleSinceHintMonotonic
    Run Cmd Int Skip    /usr/bin/loginctl show-seat -p IdleSinceHintMonotonic    IdleSinceHintMonotonic=    0

Loginctl_seat_BlockInhibited
    Run Cmd Empty Skip    /usr/bin/loginctl show-seat -p BlockInhibited    BlockInhibited=
Loginctl_seat_DelayInhibited
    Run Cmd Empty Skip    /usr/bin/loginctl show-seat -p DelayInhibited    DelayInhibited=
Loginctl_seat_InhibitDelayMaxUSec
    Run Cmd Str Skip    /usr/bin/loginctl show-seat -p InhibitDelayMaxUSec    InhibitDelayMaxUSec=    5s

Loginctl_seat_HandlePowerKey
    Run Cmd Str Skip    /usr/bin/loginctl show-seat -p HandlePowerKey    HandlePowerKey=    poweroff

Loginctl_seat_HandleSuspendKey
    Run Cmd Str Skip    /usr/bin/loginctl show-seat -p HandleSuspendKey    HandleSuspendKey=    suspend

Loginctl_seat_HandleHibernateKey
    Run Cmd Str Skip    /usr/bin/loginctl show-seat -p HandleHibernateKey    HandleHibernateKey=    hibernate

Loginctl_seat_HandleLidSwitch
    Run Cmd Str Skip    /usr/bin/loginctl show-seat -p HandleLidSwitch    HandleLidSwitch=    suspend

Loginctl_seat_HandleLidSwitchDocked
    Run Cmd Str Skip    /usr/bin/loginctl show-seat -p HandleLidSwitchDocked    HandleLidSwitchDocked=    ignore

Loginctl_seat_HoldoffTimeoutUSec
    Run Cmd Str Skip    /usr/bin/loginctl show-seat -p HoldoffTimeoutUSec    HoldoffTimeoutUSec=    30s

Loginctl_seat_IdleAction
    Run Cmd Str Skip    /usr/bin/loginctl show-seat -p IdleAction    IdleAction=    ignore

Loginctl_seat_IdleActionUSec
    Run Cmd Str Skip    /usr/bin/loginctl show-seat -p IdleActionUSec    IdleActionUSec=    30min

Loginctl_seat_PreparingForShutdown
    Run Cmd Str Skip    /usr/bin/loginctl show-seat -p PreparingForShutdown    PreparingForShutdown=    no

Loginctl_seat_PreparingForSleep
    Run Cmd Str Skip    /usr/bin/loginctl show-seat -p PreparingForSleep    PreparingForSleep=    no

Loginctl_seat_ScheduledShutdown
    Run Cmd Str Skip    /usr/bin/loginctl show-seat -p ScheduledShutdown    ScheduledShutdown=    [unprintable]

Loginctl_seat_Docked
    Run Cmd Str Skip    /usr/bin/loginctl show-seat -p Docked    Docked=    no

Loginctl_seat_RemoveIPC
    Run Cmd Str Skip    /usr/bin/loginctl show-seat -p RemoveIPC    RemoveIPC=    no

Loginctl_seat_RuntimeDirectorySize
    Run Cmd Int Skip    /usr/bin/loginctl show-seat -p RuntimeDirectorySize    RuntimeDirectorySize=    5036920832

Loginctl_seat_InhibitorsMax
    Run Cmd Int Skip    /usr/bin/loginctl show-seat -p InhibitorsMax    InhibitorsMax=    8192

Loginctl_seat_NCurrentInhibitors
    Run Cmd Int Skip    /usr/bin/loginctl show-seat -p NCurrentInhibitors    NCurrentInhibitors=    0

Loginctl_seat_SessionsMax
    Run Cmd Int Skip    /usr/bin/loginctl show-seat -p SessionsMax    SessionsMax=    8192

Loginctl_seat_NCurrentSessions
    Run Cmd Int Skip    /usr/bin/loginctl show-seat -p NCurrentSessions    NCurrentSessions=    1

Loginctl_seat_UserTasksMax
    Run Cmd Int Skip    /usr/bin/loginctl show-seat -p UserTasksMax    UserTasksMax=    21626

