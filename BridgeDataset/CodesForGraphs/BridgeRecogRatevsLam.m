lamc=[0.7 0.8 0.9  ];
accc=[ 94.82 98.7 99.14];

lamt1=[ 0.6 0.7 0.8 0.9  ];
acct1=[99.14 99.14 93.96 78.44];

lamit2=[0.6 0.7 0.8 0.9];
accit2=[99.14 99.14 99.14 94.82];

lamgt2=[0.6 0.7 0.8 0.9];
accgt2=[96.55 99.14 99.14 99.14];


box on
hold on 
graph1=plot(lamc,accc,'green');
graph2=plot(lamt1,acct1,'blue');
graph3=plot(lamit2,accit2,'red');
graph4=plot(lamgt2,accgt2,'magenta');
set(graph1,'LineWidth',1);
set(graph2,'LineWidth',1.5);
set(graph3,'LineWidth',2);
set(graph4,'LineWidth',2.5);
yticks([50 60 70 80 90 100])
scatter(lamc,accc,'green');
scatter(lamt1,acct1,'blue');
scatter(lamit2,accit2,'red','filled');
scatter(lamgt2,accgt2,'magenta','filled');
legend('Crisp','Type-1 AP','Interval Type-2 AP', 'General Type-2 AP','Location','southeast');
ylim([50 100]);
xlim([0.6 0.9]);
hold off