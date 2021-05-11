%generate plot of processing time on each image
clear;clc;

num = [5,50,100,300];%corresponding to processing time files of four parameter settings
for i = 1:length(num)
    x = zeros(1,5);
    datatable = importdata(['each_' num2str(num(i)) '.txt']);
    b = ['a' num2str(i)];
    temp = regexp(datatable,'\d*\.?\d*','match');
    for j = 1:54
        x(j,:) = str2double(temp{j,1});
    end
    eval([b,'=x']);
end
figure(1);
p1 = plot(a1(:,1),a1(:,5),'s--','LineWidth',1.0,'MarkerSize',5);% 16_5
hold on;
p2 = plot(a3(:,1),a3(:,5),'o--','LineWidth',1.0,'MarkerSize',5);% 4_5
p3 = plot(a4(:,1),a4(:,5),'o--','LineWidth',1.0,'MarkerSize',5);% 4_300
p4 = plot(a2(:,1),a2(:,5),'s--','LineWidth',1.0,'MarkerSize',5);% 16_300
legend([p1,p4,p2,p3],{'B\_v=16, E=5','B\_v=16, E=300','B\_V=4, E=5','B\_V=4, E=300'},'Location','northwest');%batch_val
xlim([0,54]),xlabel('54 images in the validation set');ylabel('Processing Time');
set(gca,'FontName','Times New Roman','FontSize',12);