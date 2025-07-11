# PREREQUISITES:

# [Install/Download using the below instruction]

1. [StaxRip](https://github.com/staxrip/staxrip/releases/) (read the [author's wiki](https://github.com/staxrip/staxrip/wiki)) and paste the Templates folder ([Link to download the Templates](https://github.com/fisher745/Encoders_Shares/blob/main/Templates.7z)) contents into it`StaxRip>Settings>Templates` and run the StaxRip app and select the `Settings`folder as the option (one-time setup).
2. Run these using PowerShell/Command Prompt: [install\_apps.bat](https://github.com/fisher745/Encoders_Shares/blob/main/install_apps.bat) & [install\_python\_libraries.bat](https://github.com/fisher745/Encoders_Shares/blob/main/install_python_libraries.bat)
3. [Dovi.Scripts](https://github.com/R3S3t9999/DoVi_Scripts), carefully read the instructions given by the author to set up. Also refer to the [youtube playlist](https://youtube.com/playlist?list=PLFGpkrmX_eOL2Dre1ZyIJP2uMtcQYH8ql&si=8NahH9MHSyHtc0ej) for your reference

# SOLUTION:

# [Blu-ray Ripping & Reading Metadata]

1. Rip the Blu-ray using MakeMKV (already installed from install\_apps.bat script), and verify the now created MKV file (hereinafter referred to as the **"OG"** file) contains the Dolby Vision or not by using the latest version of MediaInfo (already installed from the`install_apps.bat` script). Open the **“OG”** file in here and view it in either HTML or Text form, and look for the "HDR" info stating something like this `HDR format : Dolby Vision, Version 1.0, dvhe.07.06, BL+EL+RPU, Blu-ray compatible / SMPTE ST 2086, HDR10 compatible`

# [Dovi.Scripts Encoding]

1. Once verified that Dolby Vision metadata exists, run the`Dovi_Scripts_MKV.bat` file and select `MODE.I= INJECT / EDIT / EXTRACT / INFO / VALIDATE`and follow the instructions given there, add the **“OG”** file here, and read the Dolby Vision metadata values`Top, Bottom, Left and Right`
2. It should be like this
3. And not like this
4. If the values are wrong as shown above, follow the below steps. (this will take time, so be patient.)
5. Run `DoVi.Scripts\tools\AvsPmod\AvsPmod.exe`this application and drag and drop the **“OG”** file. Select `Video>Crop` in this window and enter the crop values. Refer to this [youtube video](https://www.youtube.com/watch?v=jBqbG5XM54g&list=PLFGpkrmX_eOL2Dre1ZyIJP2uMtcQYH8ql&index=7&pp=iAQB) for better understanding.
6. Again run the`Dovi_Scripts_MKV.bat` file, and select `MODE.H= DoVi MAKER from HDR10 (Dolby Algo or MadVR or HDR10+)`
7. Select the relevant option; recommended is using `Official Dolby cm_analyze.exe`
8. Read the instructions carefully and then proceed.
9. Once if everything is correct, you should now have a fresh new file of **“OG”** as **“OG\_DV”**

# [StaxRip Encoding]

1. Start the StaxRip app, and then select `File>Templates>Select the relevant template` for `Source` select the “OG”/“OG\_DV” file, whichever is relevant.
2. Once StaxRip has successfully imported the file, verify details about the same are getting shown properly [like this](https://github.com/staxrip/staxrip/raw/master/Image/Screenshots/Main.png).
3. If you wish to make edits to the metadata of a file, like the audio name tags and subtitle tags, etc. Click, `Container Options` , and you should see something [like this](https://raw.githubusercontent.com/staxrip/staxrip/master/Image/Screenshots/Muxing.png).
4. Once all is in place, click `Add Job` and `Start`.
5. Once StaxRip has finished processing, you should now have **“OG\_new” / “OG\_DV\_new”**.

# [Dovi.Scripts Verification & Comparisons] (Optional)

1. Once StaxRip has created the file, run the`Dovi_Scripts_MKV.bat` file and select `MODE.I= INJECT / EDIT / EXTRACT / INFO / VALIDATE`, and follow the instructions given there, add the **“OG\_new”/“OG\_DV\_new”** file here and read the Dolby Vision metadata values `Top, Bottom, Left and Right`, and verify if all is as per your liking.
2. Again, run the`Dovi_Scripts_MKV.bat` file and select `MODE.S= Screenshots & Player> Workflow.2= MULTIPLE INPUTS: PQ screenshots DVP5/HDR10 or SDR vs SDR (Libplacebo)`, and make the comparisons.
3. You may now delete the previous files created and now only preserve the **“OG\_new”/“OG\_DV\_new”**, or if your storage spares you, you may keep the **“OG”/“OG\_DV”** & **“OG\_new”/“OG\_DV\_new”** files.

Do share your outputs in this post.

We might be of some help if something goes south. Cheers, Hope the solution helps.
