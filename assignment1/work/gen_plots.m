close all;
clear all;

%% Import data
cd runs
run_fft64_test0;
run_fft64_test1;
run_fft64_test2;
run_fft256_test0;
run_fft256_test1;
run_fft256_test2;
run_fft1024_test0;
run_fft1024_test1;
run_fft1024_test2;
run_fft4096_test0;
run_fft4096_test1;
run_fft4096_test2;
cd ..
%% Q15 plots
figure(1);
%Sinusoidal
subplot(1,3,1);
hold on;
plot(res_64_0(:,1),  res_64_0(:,2));
plot(res_256_0(:,1), res_256_0(:,2));
plot(res_1024_0(:,1),res_1024_0(:,2));
plot(res_4096_0(:,1),res_4096_0(:,2));
hold off;
xlabel('Input level [dB]');
ylabel('1/Distortion [dB]');
title('Q15 fixed point distortion Sinusoidal input');
grid on;
ylim([-10 80]);
legend('fft64', 'fft256', 'fft1024', 'fft4096','Location','northwest');
%QPSK
subplot(1,3,2);
hold on;
plot(res_64_1(:,1),  res_64_1(:,2));
plot(res_256_1(:,1), res_256_1(:,2));
plot(res_1024_1(:,1),res_1024_1(:,2));
plot(res_4096_1(:,1),res_4096_1(:,2));
hold off;
xlabel('Input level [dB]');
ylabel('1/Distortion [dB]');
title('Q15 fixed point distortion QPSK input');
grid on;
ylim([-10 80]);
legend('fft64', 'fft256', 'fft1024', 'fft4096','Location','northwest');
% 16-QAM
subplot(1,3,3);
hold on;
plot(res_64_2(:,1),  res_64_2(:,2));
plot(res_256_2(:,1), res_256_2(:,2));
plot(res_1024_2(:,1),res_1024_2(:,2));
plot(res_4096_2(:,1),res_4096_2(:,2));
hold off;
xlabel('Input level [dB]');
ylabel('1/Distortion [dB]');
title('Q15 fixed point distortion 16-QAM input');
grid on;
ylim([-10 80]);
legend('fft64', 'fft256', 'fft1024', 'fft4096','Location','northwest');

%% Q24xQ17 plots
figure(2);
%Sinusoidal
subplot(1,3,1);
hold on;
plot(res_64_0(:,1),  res_64_0(:,3));
plot(res_256_0(:,1), res_256_0(:,3));
plot(res_1024_0(:,1),res_1024_0(:,3));
plot(res_4096_0(:,1),res_4096_0(:,3));
hold off;
xlabel('Input level [dB]');
ylabel('1/Distortion [dB]');
title('Q24xQ17 fixed point distortion Sinusoidal input');
grid on;
ylim([-10 80]);
legend('fft64', 'fft256', 'fft1024', 'fft4096','Location','northwest');
%QPSK
subplot(1,3,2);
hold on;
plot(res_64_1(:,1),  res_64_1(:,3));
plot(res_256_1(:,1), res_256_1(:,3));
plot(res_1024_1(:,1),res_1024_1(:,3));
plot(res_4096_1(:,1),res_4096_1(:,3));
hold off;
xlabel('Input level [dB]');
ylabel('1/Distortion [dB]');
title('Q24xQ17 fixed point distortion QPSK input');
grid on;
ylim([-10 80]);
legend('fft64', 'fft256', 'fft1024', 'fft4096','Location','northwest');
% 16-QAM
subplot(1,3,3);
hold on;
plot(res_64_2(:,1),  res_64_2(:,3));
plot(res_256_2(:,1), res_256_2(:,3));
plot(res_1024_2(:,1),res_1024_2(:,3));
plot(res_4096_2(:,1),res_4096_2(:,3));
hold off;
xlabel('Input level [dB]');
ylabel('1/Distortion [dB]');
title('Q24xQ17 fixed point distortion 16-QAM input');
grid on;
ylim([-10 80]);
legend('fft64', 'fft256', 'fft1024', 'fft4096','Location','northwest');


