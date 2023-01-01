tbl=readtable("1.csv");
s=size(tbl);
%a=rows2vars(tbl(2:11,1));
%b=rows2vars(tbl(2:11,2));
x=1:1:s(1);
a=["V1.0.3","V2.0.0-rc1","V2.0.0-rc2","V2.0.0-rc3","V2.0.0-rc4","V2.0.0-rc5","V2.0.0-rc6","V2.0.0-rc7","V2.0.0","V2.0.1","V2.0.1.post1"];
b=[210,324,324,324,328,330,359,359,363,367,367]; %b数据y值
plot(x,b,'o-','MarkerFaceColor','g');
%axis([0,11,200,380])  %确定x轴与y轴框图大小
set(gca,'XTickLabel',a)
%set(gca,'YTick',[0:100:700]) %y轴范围0-700，间隔100
legend('Number of problems');   %右上角标注
xlabel('Version of unicorn')  %x轴坐标描述
ylabel('Number of problems found by flawfinder') %y轴坐标描述
for i=1:length(b)
    text(i,b(i)+5,num2str(b(i)));
end
