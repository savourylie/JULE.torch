function label_pre = predict_ac_gdl(feat, nClass)
%PREDICT_GDL �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
% a = 100 for USPS
% z = 0.01;
K = 20;
a = 1;
distance_matrix = pdist2(feat, feat);
distance_matrix = distance_matrix.^2;
% GDL-U
label_pre = gdlCluster (distance_matrix, nClass, K, a, false, 1);
end
