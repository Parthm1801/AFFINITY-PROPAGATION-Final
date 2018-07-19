betaIT2=[0.5 10 20 30 40 50 60 70 80 90 100];
acc2=[91.57 83.14 83.14 82.58 83.14 83.14 82.58 82.58 82.58 82.58 82.58];

betaT1=[1 10 20 30 40 50 60 70 80 90 100];
acc1=[88.2 82.02 82.02 82.02 81.46 81.46 80.9 80.9 80.9 80.33 80.33];

betaGT2=[0.1 10 20 30 40 50 60 70 80 90 100];
acc3=[92.69 85.39 83.7 83.14 82.58 83.7 83.7 83.7 83.7 83.7 83.7];

clear y label;
box  on
hold on 

graph1=plot(betaT1,acc1,'blue');
graph2=plot(betaIT2,acc2,'red');
graph3=plot(betaGT2,acc3,'magenta');
set(graph1,'LineWidth',1.5);
set(graph2,'LineWidth',1.5);
set(graph3,'LineWidth',1.5);
yticks([50 60 70 80 90 100])
scatter(betaT1,acc1,30,'blue');
scatter(betaIT2,acc2,30,'red','filled');
scatter(betaGT2,acc3,30,'magenta','filled');
legend('Type-1 AP','Interval Type-2 AP','General Type-2 AP','Location','southeast');
ylim([50 100]);

hold off