from enum import Enum
import matplotlib.pyplot as plt
import numpy as np 
import csv


fig, axs = plt.subplots(2, 1, figsize=(6,8), sharex=True)

with open("results.csv", "r") as csv_file:
    csv_reader= csv.DictReader(csv_file)
    
    for index,result in enumerate(csv_reader):
        if index!=0:
            axs[0].plot(float(result["total area"])/1e6, result["latency"], 'o', label=result["testName"])
            axs[0].annotate(result["latency"], (float(result["total area"])/1e6, float(result["latency"])))
            axs[1].plot(float(result["total area"])/1e6, float(result["gap"]), 'o', label=result["testName"])
            axs[1].annotate(result["gap"], (float(result["total area"])/1e6, float(result["gap"])))
    axs[0].set_ylabel('Latency (cycles)')
    axs[1].set_ylabel('Gap (Inverse Throughput) (cycles)')
    axs[1].set_xlabel("Synthesized Area (mm^2)")
    fig.suptitle("FFT Accelerator Configs")
    axs[0].legend()
    axs[1].legend()
    plt.show()




# # FFT Parameters

# #1.  
# #2. 

# files = ["fft_flt_it_rdx2_width2", "fft_flt_it_rdx8_width8", "fft_fx32_it_rdx2_width2", "fft_fx32_it_rdx2_width8", "fft_fx32_it_rdx2_width32", "fft_fx32_it_rdx8_width8",  "fft_fx32_it_rdx8_width32"]

# data_type = ["float", "float", "fixed", "fixed", "fixed", "fixed"]
# architecture = ["iterative", "iterative", "iterative", "iterative", "iterative", "iterative"]
# radix = [2, 8, 2, 2, 2, 8, 8] # basic block size
# stream_width = [2, 8, 2, 8, 32, 8, 32]

# latency = [5521, 783, 5323, 1503, 563, 621, 245] # cycles
# gap = [5005, 649, 4807, 1369, 523, 487, 205] # cycles. inverse throughput.
# area = [2542491.802, 3161266.680, 2522383.615, 2702281.204, 3661835.971, 2867288.814, 4308801.481] # from genus final_area.rpt. micrometers??

# fig, axs = plt.subplots(2, 1, figsize=(6,8), sharex=True)

# for config in range(len(files)):
#     axs[0].plot(area[config]/1e6, latency[config], 'o', label=files[config])
#     axs[0].annotate(str(latency[config]), (area[config]/1e6, latency[config]))
#     axs[1].plot(area[config]/1e6, gap[config], 'o', label=files[config])
#     axs[1].annotate(str(gap[config]), (area[config]/1e6, gap[config]))


# axs[0].set_ylabel('Latency (cycles)')
# axs[1].set_ylabel('Gap (Inverse Throughput) (cycles)')
# axs[1].set_xlabel("Synthesized Area (mm^2)")
# fig.suptitle("FFT Accelerator Configs")
# axs[0].legend()
# axs[1].legend()
# plt.show()