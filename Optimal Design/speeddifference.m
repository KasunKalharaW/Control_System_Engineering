function Vdiff = speeddifference(qx, qy, qDotx, qDoty)


K = 1;

N = length(qx)/2;

PriorityMatrix = zeros(5,6);

collisionNumber = 0;

    for m = 1:N

       for n = 1:N

           if n>m
                qxi = qx(m);
                qyi = qy(m);
                qxj = qx(n);
                qyj = qy(n);

                Range = K*sqrt((qxi - qxj)^2 + (qyi - qyj)^2); 

                qDotxi = qDotx(m);
                qDotyi = qDoty(m);
                qDotxj = qDotx(n);
                qDotyj = qDoty(n);

                ClosureRate = K*sqrt((qDotxi - qDotxj)^2 + (qDotyi - qDotyj)^2); 

                ClosureTime =  Range/ClosureRate;

                collisionNumber = collisionNumber + 1;
                
                Collision = [m;n;Range;ClosureRate;ClosureTime];

                PriorityMatrix(:,collisionNumber) = Collision;

           end 

       end 

    end
    
    [minimumClosureTime, I] = min(PriorityMatrix,[],5);
    
Vdiff = PriorityMatrix(4,I);






