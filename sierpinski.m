function [ shapes ] = sierpinski( n )

shapes = [];

A = [0 0];
B = [10 0];
C = [5 8.660];

shape.A = A;
shape.B = B;
shape.C = C;

shapes = [shapes shape];
for i = 1 : n
    t = length(shapes);
    for j = 1 : t
        
        shape2.A = shapes(j).A;
        shape2.A(1) = shape2.A(1) + 10*(2^(i-1));
        shape2.B = shapes(j).B;
        shape2.B(1) = shape2.B(1) + 10*(2^(i-1));
        shape2.C = shapes(j).C;
        shape2.C(1) = shape2.C(1) + 10*(2^(i-1));
        
        shape3.A = shapes(j).A;
        shape3.A(1) = shape3.A(1) + 5*(2^(i-1));
        shape3.A(2) = shape3.A(2) + 8.66*(2^(i-1));
        
        shape3.B = shapes(j).B;
        shape3.B(1) = shape3.B(1) + 5*(2^(i-1));
        shape3.B(2) = shape3.B(2) + 8.66*(2^(i-1));

        shape3.C = shapes(j).C;
        shape3.C(1) = shape3.C(1) + 5*(2^(i-1));
        shape3.C(2) = shape3.C(2) + 8.66*(2^(i-1));
        
               
        shapes = [shapes shape2 shape3];
    end
end
figure
ax = gca
ax.Visible = 'off'
hold on

for i = 1 : length(shapes)
%     plot([shapes(i).A(1) shapes(i).B(1)], [shapes(i).A(2) shapes(i).B(2)]);
%     plot([shapes(i).B(1) shapes(i).C(1)], [shapes(i).B(2) shapes(i).C(2)]);
%     plot([shapes(i).A(1) shapes(i).C(1)], [shapes(i).A(2) shapes(i).C(2)]);
    X=[shapes(i).A(1) ; shapes(i).B(1) ; shapes(i).C(1)];
    Y=[shapes(i).A(2) ; shapes(i).B(2) ; shapes(i).C(2)];
    
    patch(X,Y,'black');
end
end

