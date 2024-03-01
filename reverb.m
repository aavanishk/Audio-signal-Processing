deviceReader = audioDeviceReader('Driver','DirectSound','Device','Stereo Mix (Realtek High Definition Audio)','SamplesPerFrame',1024,'SampleRate',44100);
deviceWriter = audioDeviceWriter('SampleRate',deviceReader.SampleRate);

reverb = reverberator('PreDelay',0.5,'WetDryMix',0.5);
nUnderruns = 0;
while toc<30  %30 secs of Simulation
    in = deviceReader();
    out = reverb(in);
    nUnderruns = nUnderruns + deviceWriter(out);
end 
%Clean Up
release(reverb);
release(deviceReader);
release(deviceWriter);

