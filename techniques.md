<h1>
    Noise Redction Technique
</h1>

<h2>
    Low Pass Filter
</h2>

<p>
    The project incorporates a low-pass filter to selectively allow frequencies below a certain threshold,  effectively attenuating high-frequency noise. Initially, we assume that the white Gaussian noise is  corrupting the signal and which is later to be denoised. This ensures that only the essential audio  frequencies pass through, contributing to a cleaner and more focused sound.
</p>

<h2>
    Echo Effect
</h2>

<p>
    To create the certain impact of echoes, an echo effect mechanism is employed. This feature identifies  the original sound and creates lingering echoes, resulting in a reverbed audio output. Here, the delay is  added to the feedback loop and amplified by gain. The following formula was used in design of code. 
    y[n] = x[n] + a. x[n − d] 
    The output is the product of delay input with some gain added to the original input signal.
</p>

<h2>
    Flange Effect Mitigation
</h2>

<p>
    The project integrates a flange effect reduction module to counteract undesirable changes and  interruptions in the audio signal. This ensures a smooth and uniform sound, free from artificial  fluctuations that can detract from the overall listening experience. For the feedback, a modulated delay  to process the low frequency sine wave was implied and added with amplifier for gain. For the MATLAB  code, following formula was implied.
    y[n] = x[n] + a. x[n − d[n]]
</p>

<h2>
    Graphic Equilizer
</h2>

<p>
    A graphic equalizer is incorporated to provide users with the ability to fine-tune the frequency response  of the audio. This allows for personalized adjustments, catering to individual preferences and the  specific characteristics of the audio content. For the project, inbuilt graphic equalizer was used. MATLAB  includes 10 band graphic equalizer which takes in the audio input and gives out output by processing the  octave bandwidth, parallel and various cascade structures. 
</p>

<h2>
    Reverb Function
</h2>

<p>
    The reverb function is inbuilt audio function included in MATLAB where the original input is added with  delay and gain multiple time and fed back to the main stream and given as output. It creates the  reverberation of certain audio.
</p>