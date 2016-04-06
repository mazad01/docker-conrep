#!/bin/sh
/opt/hp/hp-scripting-tools/bin/conrep -l -f /bios/powerprofile_max_perf.dat
/opt/hp/hp-scripting-tools/bin/conrep -l -f /bios/hyperthreading_disable.dat
/opt/hp/hp-scripting-tools/bin/conrep -l -f /bios/asr_disable.dat
/opt/hp/hp-scripting-tools/bin/conrep -l -f /bios/power_monitor_disable.dat
/opt/hp/hp-scripting-tools/bin/conrep -l -f /bios/memory_notify_disabled_yes.dat
/opt/hp/hp-scripting-tools/bin/conrep -l -f /bios/collab_pwrctrl_disabled.dat
/opt/hp/hp-scripting-tools/bin/conrep -l -f /bios/intelvtd_disabled.dat
/opt/hp/hp-scripting-tools/bin/conrep -l -f /bios/intelqpi_disabled.dat
/opt/hp/hp-scripting-tools/bin/conrep -l -f /bios/mincpu_idle_core_no_cstates.dat
/opt/hp/hp-scripting-tools/bin/conrep -l -f /bios/mincpu_idle_pkg_no_pkg_state.dat
/opt/hp/hp-scripting-tools/bin/conrep -l -f /bios/energy_bias_maximum_performance.dat
/opt/hp/hp-scripting-tools/bin/conrep -l -f /bios/dyn_pwrcap_disabled.dat
/opt/hp/hp-scripting-tools/bin/conrep -l -f /bios/dimm_voltage_optimized_for_performance.dat
