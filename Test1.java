public class Test{
	public void static main(String []args){
		
		total, counts = map(int, input().split());
pay = [int(input()) for i in range(counts)];

charge = total;
points = 0;

for i in range(counts){
    if points >= pay[i]{
        points = points - pay[i];
        print(total, points);
        continue;
    total = total - pay[i];
    points = points + int(pay[i] / 10);
    print(total, points);
	}
}
