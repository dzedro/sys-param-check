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
Loginctl_session_EnableWallMessages
    Run Cmd Str Skip    /usr/bin/loginctl show-session -p EnableWallMessages    EnableWallMessages=    no

Loginctl_session_WallMessage
    Run Cmd Empty Skip    /usr/bin/loginctl show-session -p WallMessage    WallMessage=
Loginctl_session_NAutoVTs
    Run Cmd Int Skip    /usr/bin/loginctl show-session -p NAutoVTs    NAutoVTs=    6

Loginctl_session_KillOnlyUsers
    Run Cmd Empty Skip    /usr/bin/loginctl show-session -p KillOnlyUsers    KillOnlyUsers=
Loginctl_session_KillExcludeUsers
    Run Cmd Empty Skip    /usr/bin/loginctl show-session -p KillExcludeUsers    KillExcludeUsers=
Loginctl_session_KillUserProcesses
    Run Cmd Str Skip    /usr/bin/loginctl show-session -p KillUserProcesses    KillUserProcesses=    no

Loginctl_session_RebootToFirmwareSetup
    Run Cmd Str Skip    /usr/bin/loginctl show-session -p RebootToFirmwareSetup    RebootToFirmwareSetup=    no

Loginctl_session_IdleHint
    Run Cmd Str Skip    /usr/bin/loginctl show-session -p IdleHint    IdleHint=    no

Loginctl_session_IdleSinceHint
    Run Cmd Int Skip    /usr/bin/loginctl show-session -p IdleSinceHint    IdleSinceHint=    0

Loginctl_session_IdleSinceHintMonotonic
    Run Cmd Int Skip    /usr/bin/loginctl show-session -p IdleSinceHintMonotonic    IdleSinceHintMonotonic=    0

Loginctl_session_BlockInhibited
    Run Cmd Empty Skip    /usr/bin/loginctl show-session -p BlockInhibited    BlockInhibited=
Loginctl_session_DelayInhibited
    Run Cmd Empty Skip    /usr/bin/loginctl show-session -p DelayInhibited    DelayInhibited=
Loginctl_session_InhibitDelayMaxUSec
    Run Cmd Str Skip    /usr/bin/loginctl show-session -p InhibitDelayMaxUSec    InhibitDelayMaxUSec=    5s

Loginctl_session_HandlePowerKey
    Run Cmd Str Skip    /usr/bin/loginctl show-session -p HandlePowerKey    HandlePowerKey=    poweroff

Loginctl_session_HandleSuspendKey
    Run Cmd Str Skip    /usr/bin/loginctl show-session -p HandleSuspendKey    HandleSuspendKey=    suspend

Loginctl_session_HandleHibernateKey
    Run Cmd Str Skip    /usr/bin/loginctl show-session -p HandleHibernateKey    HandleHibernateKey=    hibernate

Loginctl_session_HandleLidSwitch
    Run Cmd Str Skip    /usr/bin/loginctl show-session -p HandleLidSwitch    HandleLidSwitch=    suspend

Loginctl_session_HandleLidSwitchDocked
    Run Cmd Str Skip    /usr/bin/loginctl show-session -p HandleLidSwitchDocked    HandleLidSwitchDocked=    ignore

Loginctl_session_HoldoffTimeoutUSec
    Run Cmd Str Skip    /usr/bin/loginctl show-session -p HoldoffTimeoutUSec    HoldoffTimeoutUSec=    30s

Loginctl_session_IdleAction
    Run Cmd Str Skip    /usr/bin/loginctl show-session -p IdleAction    IdleAction=    ignore

Loginctl_session_IdleActionUSec
    Run Cmd Str Skip    /usr/bin/loginctl show-session -p IdleActionUSec    IdleActionUSec=    30min

Loginctl_session_PreparingForShutdown
    Run Cmd Str Skip    /usr/bin/loginctl show-session -p PreparingForShutdown    PreparingForShutdown=    no

Loginctl_session_PreparingForSleep
    Run Cmd Str Skip    /usr/bin/loginctl show-session -p PreparingForSleep    PreparingForSleep=    no

Loginctl_session_ScheduledShutdown
    Run Cmd Str Skip    /usr/bin/loginctl show-session -p ScheduledShutdown    ScheduledShutdown=    [unprintable]

Loginctl_session_Docked
    Run Cmd Str Skip    /usr/bin/loginctl show-session -p Docked    Docked=    no

Loginctl_session_RemoveIPC
    Run Cmd Str Skip    /usr/bin/loginctl show-session -p RemoveIPC    RemoveIPC=    no

Loginctl_session_RuntimeDirectorySize
    Run Cmd Int Skip    /usr/bin/loginctl show-session -p RuntimeDirectorySize    RuntimeDirectorySize=    5036920832

Loginctl_session_InhibitorsMax
    Run Cmd Int Skip    /usr/bin/loginctl show-session -p InhibitorsMax    InhibitorsMax=    8192

Loginctl_session_NCurrentInhibitors
    Run Cmd Int Skip    /usr/bin/loginctl show-session -p NCurrentInhibitors    NCurrentInhibitors=    0

Loginctl_session_SessionsMax
    Run Cmd Int Skip    /usr/bin/loginctl show-session -p SessionsMax    SessionsMax=    8192

Loginctl_session_NCurrentSessions
    Run Cmd Int Skip    /usr/bin/loginctl show-session -p NCurrentSessions    NCurrentSessions=    1

Loginctl_session_UserTasksMax
    Run Cmd Int Skip    /usr/bin/loginctl show-session -p UserTasksMax    UserTasksMax=    21626

