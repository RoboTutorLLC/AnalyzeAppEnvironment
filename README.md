# AnalyzeAppEnvironment
Tools to analyze environment in which RoboTutor etc. run, e.g. log a directory listing to see what files are there

apk that when run, logs recursive directory of whatever folder it’s in (“.”), presumably [main storage]/Download
	Filename should include tablet ID and timestamp
	Output filepath, filename, file size, file date (however is easiest)
	Output to [internal storage]/RoboTutor where DriveSync is already configured to upload
