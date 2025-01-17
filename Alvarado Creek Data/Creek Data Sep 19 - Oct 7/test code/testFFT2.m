% Assuming raw_data is your sensor data and fs is the sampling frequency
raw_data = y;
fs = 0.00167; % Example sampling frequency in Hz

% Compute FFT
y = fft(raw_data);
y_shifted = fftshift(y);
n = length(raw_data);
f = (0:n-1)*(fs/n); % Frequency vector
y_reconstructed = ifft(y);
power = abs(y).^2/n; % Power of the FFT


% Create the new frequency vector
f_shifted = (-n/2:n/2-1)*(fs/n); % Frequency vector

% Find the peak in the power spectrum
[~, idx] = max(power);
dominant_freq = f(idx); % Dominant frequency

% Calculate period
period = 1/dominant_freq;
period = period/3600; % Convert period from seconds to hours

disp(['Dominant Frequency: ', num2str(dominant_freq), ' Hz']);
disp(['Period: ', num2str(period), ' hours']);

figure;
plot(f, power)
xlabel('Frequency (Hz)')
ylabel('Power')
title('Power Spectrum')
grid on

figure;
plot(f, abs(y))
xlabel('Frequency (Hz)')
ylabel('Magnitude')
title('Frequency Spectrum')
grid on

figure;
plot(real(y_reconstructed)); % Use real part to avoid small imaginary components due to numerical errors
xlabel('Sample Number');
ylabel('Amplitude');
title('Reconstructed Signal');
grid on;
