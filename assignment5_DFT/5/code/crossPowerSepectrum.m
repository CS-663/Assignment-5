function [cps, cps_log] = crossPowerSepectrum(I, J)
    F = fftshift(fft2(I));
    F_prime = fftshift(fft2(J));
    numerator = F.*conj(F_prime);
    denomenator = abs(F.*F_prime);
    cps = numerator./denomenator;
    cps_log = log(abs(cps)+1);
end