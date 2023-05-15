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
Limit_core_file_size
    Bash Builtin    ulimit -c    unlimited

Limit_data_seg_size
    Bash Builtin    ulimit -d    unlimited

Limit_scheduling_priority
    Bash Builtin Int    ulimit -e    0

Limit_file_size
    Bash Builtin    ulimit -f    unlimited

Limit_pending_signals
    Bash Builtin Int    ulimit -i    192080

Limit_max_locked_memory
    Bash Builtin Int    ulimit -l    64

Limit_max_memory_size
    Bash Builtin    ulimit -m    unlimited

Limit_open_files
    Bash Builtin Int    ulimit -n    1024

Limit_pipe_size
    Bash Builtin Int    ulimit -p    8

Limit_POSIX_message_queues
    Bash Builtin Int    ulimit -q    819200

Limit_real-time_priority
    Bash Builtin Int    ulimit -r    0

Limit_stack_size
    Bash Builtin Int    ulimit -s    8192

Limit_cpu_time
    Bash Builtin    ulimit -t    unlimited

Limit_max_user_processes
    Bash Builtin Int    ulimit -u    192080

Limit_virtual_memory
    Bash Builtin    ulimit -v    unlimited

Limit_file_locks
    Bash Builtin    ulimit -x    unlimited

