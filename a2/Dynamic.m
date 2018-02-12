function Z = Dynamic (t, z, c_1,c_2,k_1,k_2)
    Z = zeros(4, 1);
    Z(1) = z(3);
    Z(2) = z(4);
    Z(3) = sin(t) - c_1*(z(3)-z(4)) - k_1*(z(1) - z(2)) - k_2*z(1);
    Z(4) = c_1*(z(3)-z(4)) - c_2*(z(1)-z(2));
end