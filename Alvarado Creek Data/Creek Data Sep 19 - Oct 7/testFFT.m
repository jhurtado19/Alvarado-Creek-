% Example time series data
signal = tRFUo;
L = length(tRFUo);
% Sampling interval in seconds
delta_t = 600;

% Sampling rate in Hz
Fs = 1 / delta_t;
dim = 2;
% Compute the FFT
Y = fft(signal,L,dim);

% Compute the frequency axis
n = length(signal);
f = (0:n-1)*(Fs/n); % Frequency range

P2 = abs(Y/L);
P1 = P2(:,1:L/2+1);
P1(:,2:end-1) = 2*P1(:,2:end-1);


plot(0:(Fs/L):(Fs/2-Fs/L),P1(i,1:L/2));


% Plot the original signal
%subplot(2, 1, 1);
%plot(signal, '-');
%title('Original Signal');

% Plot the FFT result (magnitude)
%subplot(2, 1, 2);
%plot(f, fft_result, 'x');
%title('FFT of the Signal');
%xlabel('Frequency (Hz)');
%ylabel('Magnitude');
