deviceReader = audioDeviceReader('Driver','DirectSound','Device','Stereo Mix (Realtek High Definition Audio)','SamplesPerFrame',2048,'SampleRate',44100);
deviceWriter = audioDeviceWriter('SampleRate',deviceReader.SampleRate);

equalizer = graphicEQ('Bandwidth','1 octave','Structure','Parallel','SampleRate',deviceReader.SampleRate);

%Simulating effects like Pop, Rock etc.

equalizer.Gains = [4 4.2 4.6 2.7 -3.7 -5.2 -2.5 2.3 5.4 6.5];

visualize(equalizer)
nUnderruns = 0;
tic;
while toc<30  %30 secs of Simulation
    in = deviceReader();
    out = equalizer(in);
    nUnderruns = nUnderruns + deviceWriter(out);
end 
%Clean Up
release(sut);
release(deviceReader);
release(deviceWriter);

