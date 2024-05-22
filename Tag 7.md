# Tag 7

* Filter
* Rocky Linux Installation
* Prozessverwaltung

## Rocky Linux

### EPAL Repository

 `dnf config-manager --set-enabled crb dnf install epel-release`

## Prozessverwaltung

`ls /proc` Zeigt einem alle Laufenden Prozesse an.

`prep Prozess` zieht uns aus denn Laufenden Prozessen denn gewünschten raus.

Angaben die wir mit cat und der Prozessnummer

### status als beispiel von dem Programm cat

 `cat /proc/37778/status`

`Name:cat
Umask: 0022
State: S (sleeping)
Tgid: 37778
Ngid: 0
Pid: 37778
PPid: 37443
TracerPid: 0
Uid: 1000 1000 1000 1000
Gid: 10 10 10 10
FDSize: 256
 Groups: 10
NStgid: 37778
NSpid: 37778
NSpgid: 37778
NSsid: 37443
VmPeak: 5724 kB
VmSize: 5724 kB
VmLck: 0 kB
VmPin: 0 kB
VmHWM: 1664 kB
VmRSS: 1664 kB
RssAnon: 0 kB
RssFile: 1664 kB
RssShmem: 0 kB
VmData: 360 kB
VmStk: 132 kB
VmExe: 16 kB
VmLib: 1652 kB
VmPTE: 52 kB
VmSwap: 0 kB
HugetlbPages: 0 kB
CoreDumping: 0
THP_enabled: 1
untag_mask: 0xffffffffffffffff
Threads: 1
SigQ: 0/14477
SigPnd: 0000000000000000
ShdPnd: 0000000000000000
SigBlk: 0000000000000000
SigIgn: 0000000000000000
SigCgt: 0000000000000000
CapInh: 0000000000000000
CapPrm: 0000000000000000
CapEff: 0000000000000000
CapBnd: 000001ffffffffff
CapAmb: 0000000000000000
NoNewPrivs: 0
Seccomp: 0
Seccomp_filters: 0
Speculation_Store_Bypass: thread vulnerable
SpeculationIndirectBranch: conditional enabled
Cpus_allowed: f Cpus_allowed_list: 0-3
Mems_allowed: 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 00000001
Mems_allowed_list: 0
voluntary_ctxt_switches: 1
nonvoluntary_ctxt_switches: 0`

### Limit Zeigt die Limitierungen an

`[@Rocky-Balboa-VM .ssh]$ cat /proc/37778/limits` # Limit Soft Limit Hard Limit Units Max cpu time unlimited unlimited seconds Max file size unlimited unlimited bytes Max data size unlimited unlimited bytes Max stack size 8388608 unlimited bytes Max core file size 0 unlimited bytes Max resident set unlimited unlimited bytes Max processes 14477 14477 processes Max open files 1024 524288 files Max locked memory 8388608 8388608 bytes Max address space unlimited unlimited bytes Max file locks unlimited unlimited locks Max pending signals 14477 14477 signals Max msgqueue size 819200 819200 bytes Max nice priority 0 0 Max realtime priority 0 0 Max realtime timeout unlimited unlimited us

### fd zeigt die Verzeichnisse/Dateien die ein Prozess geöffnet hat

 `[x@Rocky-Balboa-VM .ssh]$ ls -l /proc/37778/fd`

total 0 lrwx------. 1 x wheel 64 May 22 13:04 0 -> /dev/pts/1 l-wx------. 1 x wheel 64 May 22 13:04 1 -> /home/x/ausgabe.txt l-wx------. 1 x wheel 64 May 22 13:04 2 -> /home/x/fehler.txt

### meminfo

MemTotal: 378032 kB MemFree: 112772 kB MemAvailable: 47560 kB Buffers: 0 kB Cached: 80528 kB SwapCached: 9756 kB Active: 38804 kB Inactive: 57856 kB Active(anon): 11624 kB Inactive(anon): 8208 kB Active(file): 27180 kB Inactive(file): 49648 kB Unevictable: 3072 kB Mlocked: 0 kB SwapTotal: 4140028 kB SwapFree: 4031540 kB Zswap: 0 kB Zswapped: 0 kB Dirty: 0 kB Writeback: 0 kB AnonPages: 17892 kB Mapped: 23484 kB Shmem: 3700 kB KReclaimable: 24724 kB Slab: 69292 kB SReclaimable: 24724 kB SUnreclaim: 44568 kB KernelStack: 2624 kB PageTables: 2260 kB SecPageTables: 0 kB NFS_Unstable: 0 kB Bounce: 0 kB WritebackTmp: 0 kB CommitLimit: 4329044 kB Committed_AS: 327592 kB VmallocTotal: 34359738367 kB VmallocUsed: 35996 kB VmallocChunk: 0 kB Percpu: 1648 kB HardwareCorrupted: 0 kB AnonHugePages: 0 kB ShmemHugePages: 0 kB ShmemPmdMapped: 0 kB FileHugePages: 0 kB FilePmdMapped: 0 kB CmaTotal: 0 kB CmaFree: 0 kB Unaccepted: 0 kB HugePages_Total: 0 HugePages_Free: 0 HugePages_Rsvd: 0 HugePages_Surp: 0 Hugepagesize: 2048 kB Hugetlb: 0 kB DirectMap4k: 122156 kB DirectMap2M: 1974272 kB DirectMap1G: 2097152 kB

### cpuinfo zeigt die Informationen der CPU an

processor : 0 vendor_id : GenuineIntel cpu family : 6 model : 151 model name : 12th Gen Intel(R) Core(TM) i5-12400 stepping : 5 microcode : 0xffffffff cpu MHz : 2496.000 cache size : 18432 KB physical id : 0 siblings : 4 core id : 0 cpu cores : 2 apicid : 0 initial apicid : 0 fpu : yes fpu_exception : yes cpuid level : 21 wp : yes flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss ht syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology cpuid pni pclmulqdq ssse3 fma cx16 sse4_1 sse4_2 movbe popcnt aes xsave avx f16c rdrand hypervisor lahf_lm abm 3dnowprefetch ssbd ibrs ibpb stibp ibrs_enhanced fsgsbase bmi1 avx2 smep bmi2 erms invpcid rdseed adx smap clflushopt clwb sha_ni xsaveopt xsavec xgetbv1 xsaves gfni vaes vpclmulqdq rdpid fsrm md_clear flush_l1d arch_capabilities bugs : spectre_v1 spectre_v2 spec_store_bypass swapgs retbleed eibrs_pbrsb bogomips : 4992.00 clflush size : 64 cache_alignment : 64 address sizes : 39 bits physical, 48 bits virtual power management:

processor : 1 vendor_id : GenuineIntel cpu family : 6 model : 151 model name : 12th Gen Intel(R) Core(TM) i5-12400 stepping : 5 microcode : 0xffffffff cpu MHz : 2496.000 cache size : 18432 KB physical id : 0 siblings : 4 core id : 0 cpu cores : 2 apicid : 1 initial apicid : 1 fpu : yes fpu_exception : yes cpuid level : 21 wp : yes flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss ht syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology cpuid pni pclmulqdq ssse3 fma cx16 sse4_1 sse4_2 movbe popcnt aes xsave avx f16c rdrand hypervisor lahf_lm abm 3dnowprefetch ssbd ibrs ibpb stibp ibrs_enhanced fsgsbase bmi1 avx2 smep bmi2 erms invpcid rdseed adx smap clflushopt clwb sha_ni xsaveopt xsavec xgetbv1 xsaves gfni vaes vpclmulqdq rdpid fsrm md_clear flush_l1d arch_capabilities bugs : spectre_v1 spectre_v2 spec_store_bypass swapgs retbleed eibrs_pbrsb bogomips : 4992.00 clflush size : 64 cache_alignment : 64 address sizes : 39 bits physical, 48 bits virtual power management:

processor : 2 vendor_id : GenuineIntel cpu family : 6 model : 151 model name : 12th Gen Intel(R) Core(TM) i5-12400 stepping : 5 microcode : 0xffffffff cpu MHz : 2496.000 cache size : 18432 KB physical id : 0 siblings : 4 core id : 1 cpu cores : 2 apicid : 2 initial apicid : 2 fpu : yes fpu_exception : yes cpuid level : 21 wp : yes flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss ht syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology cpuid pni pclmulqdq ssse3 fma cx16 sse4_1 sse4_2 movbe popcnt aes xsave avx f16c rdrand hypervisor lahf_lm abm 3dnowprefetch ssbd ibrs ibpb stibp ibrs_enhanced fsgsbase bmi1 avx2 smep bmi2 erms invpcid rdseed adx smap clflushopt clwb sha_ni xsaveopt xsavec xgetbv1 xsaves gfni vaes vpclmulqdq rdpid fsrm md_clear flush_l1d arch_capabilities bugs : spectre_v1 spectre_v2 spec_store_bypass swapgs retbleed eibrs_pbrsb bogomips : 4992.00 clflush size : 64 cache_alignment : 64 address sizes : 39 bits physical, 48 bits virtual power management:

processor : 3 vendor_id : GenuineIntel cpu family : 6 model : 151 model name : 12th Gen Intel(R) Core(TM) i5-12400 stepping : 5 microcode : 0xffffffff cpu MHz : 2496.000 cache size : 18432 KB physical id : 0 siblings : 4 core id : 1 cpu cores : 2 apicid : 3 initial apicid : 3 fpu : yes fpu_exception : yes cpuid level : 21 wp : yes flags : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss ht syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology cpuid pni pclmulqdq ssse3 fma cx16 sse4_1 sse4_2 movbe popcnt aes xsave avx f16c rdrand hypervisor lahf_lm abm 3dnowprefetch ssbd ibrs ibpb stibp ibrs_enhanced fsgsbase bmi1 avx2 smep bmi2 erms invpcid rdseed adx smap clflushopt clwb sha_ni xsaveopt xsavec xgetbv1 xsaves gfni vaes vpclmulqdq rdpid fsrm md_clear flush_l1d arch_capabilities bugs : spectre_v1 spectre_v2 spec_store_bypass swapgs retbleed eibrs_pbrsb bogomips : 4992.00 clflush size : 64 cache_alignment : 64 address sizes : 39 bits physical, 48 bits virtual power management:

### top

Zeigt wie bei Windows die laufenden Prozesse

### ps Process snapshot

* -axu
  * -a = das gleiche wie -e
  * -x = hebt beschrenkung auf die für alle gruppen gilt
  * -u = wählt nach effektiver Benutzerkennung (EUID) oder Name aus. Dadurch werden die Prozesse ausgewählt, deren effektiver Benutzername oder -kennung in der Benutzerliste aufgeführt ist.
* -ely = Wählt alle Prozesse, long information,
  * -e = wählt alle Prozesse aus
  * -l = long infortation
  * -y = zeigt statt ADDR RSS
* pstree = zeigt einen Baum von prossessen

### kill

Beendet einen prozzes

* pkill -1 cat =  Hanup
* pkill -15 cat = Terminate
* pkill -9  cat = Anschießen
