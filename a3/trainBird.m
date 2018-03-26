load('train_bird.mat');
soundsc(y,Fs);

N = length(y);
n = 12880;
f = y;

figure;
plot(f);
title("polluted train whiste");

% compute DFT for origin
F = fft(f);
figure;
plot(abs(F));
title("power spectrum of noisy signal");

% seperate the sound interval by bird and train
bird = F;
bird(1000:2000) = 0;
bird(11000:12000) = 0;

train = F;
train(3000:10000) = 0;

% compute DFT for both bird sound and train sound
fun_bird = ifft(bird);
fun_train = ifft(train);

soundsc(real(fun_bird));
soundsc(real(fun_train));

figure;
plot(real(fun_train));
title("denoised train whiste");
figure; 
plot(abs(fun_train));
title("power spectrum of denoised single");