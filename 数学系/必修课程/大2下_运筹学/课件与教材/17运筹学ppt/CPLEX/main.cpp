#include <stdlib.h>
#include <ilcplex/ilocplex.h>
#include <windows.h>

const int N = 100;

ILOSTLBEGIN

int
	main(int, char**)
{
//��ⱳ������
	double s[N]={3,5,6,7,4};//��Ʒ size
	double w[N]={3,3,6,9,1};//��Ʒ��ֵ
	double c=20;//������������
	
	int n=5;
	
	IloEnv env;
	try{
		IloModel model(env);
		IloNumVarArray x(env,n,0,1,ILOINT);//�������������x(nά),ȡֵ��Χ 0 ��1�� Ϊ0��1����
		IloNumVar W(env,0,IloInfinity, ILOFLOAT);//���FLOAT�ͱ���W, ȡֵ��Χ 0,IloInfinity�� ���� ILOFLOAT��WΪ��װ��Ʒ���ܼ�ֵ
		
		IloExpr availExpr(env);	
		for(int i=0;i<n;i++)
		{
			availExpr+=s[i]*x[i];
		}
		model.add(availExpr<=c);//��� �������Ƶ�Լ������
		availExpr.end();

		IloExpr availExpr1(env);	
		for(int i=0;i<n;i++)
		{
			availExpr1+=w[i]*x[i];
		}
		model.add(availExpr1>=W);
		availExpr1.end();// ����Ŀ�꺯��W������Ĺ�ϵ����Ϊ��֧�ֵ�ʽ�������ò���ʽ����
		
		//model.add(IloMinimize(env,W));
		model.add(IloMaximize(env,W));//���Ŀ�꺯��
			
		IloCplex cplex(env);
		cplex.extract(model);
		cplex.solve();
		int status=cplex.getStatus();
		double opt=cplex.getObjValue();
		
		double w0;
		w0=cplex.getValue(W);//����ȡ��W��ֵ���Թ�����
		int xx[N];
		for(int i=0;i<n;i++)
		{
			xx[i]=cplex.getValue(x[i]);//����ȡ��x[i]��ֵ���Թ�����
		}
		cout<<"W="<<w0<<endl;
		for(int i=0;i<n;i++)
			cout<<"x["<<i<<"]="<<xx[i]<<endl;		
	}
	catch (IloException& ex) {
		cerr << "Error: " << ex << endl;
	}
	env.end();
	//	Sleep(4000);

   system ("pause");
   return 0 ;
} 