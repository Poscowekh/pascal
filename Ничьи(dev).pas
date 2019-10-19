var 
    n,i,k,count: integer;
    a: array[,] of integer;
    
    
begin
    write('Количество известных событий: ');
    readln(n);
    setlength(a,n,2);
    writeln('События:');                            
    for i:=0 to n-1 do
        readln(a[i,0],a[i,1]);
    count:=1;
    {for i:=0 to n-1 do         //Проверка входных данных на корректность
         if a[i,0]=0 
         then
            if a[i,1]=0 
            then
                begin
                writeln('Неправильные входные данные!');
                exit;
                end;
    for i:=1 to n-1 do 
        begin               
        if a[i-1,1]>a[i,1]
        then
            begin
            writeln('Неправильные входные данные!');
            exit;
            end;
        if a[i-1,0]>a[i,0]
            then
                begin
                writeln('Неправильные входные данные!');
                exit;
                end;
        end;  } 
    writeln;
    if a[0,0]>a[0,1]
    then
        begin
        count:=count+a[0,1];
        writeln(count,'  //1(>)  //',0);
        end
    else
        begin
        count:=count+a[0,0];
        writeln(count,'  //1(<=)  //',0);
        end;
    for i:=1 to n-1 do
        if a[i,0]-a[i-1,0]>a[i,1]-a[i-1,1]
        then
            begin
            if a[i-1,0]>a[i-1,1]
            then
                count:=count+a[i,1]-a[i-1,0]
            else
                count:=count+a[i,1]-a[i-1,0];
            writeln(count,'  //2(>)  //',i);
            end
        else
            if a[i,0]-a[i-1,0]>=a[i,1]-a[i-1,1]
            then
                count:=count+a[i,0]-a[i-1,0]
            else
                begin
                if a[i-1,0]>a[i-1,1]
                then
                    count:=count+a[i,0]-a[i-1,1]
                else
                    count:=count+a[i,0]-a[i-1,0];    
                writeln(count,'  //2(<=)  //',i);
                end;
    writeln;
    writeln('Максимальное возможное число ничьих: ',count);                    
end.    