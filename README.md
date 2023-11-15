# Automated Sensory Based Waste Segregation System


<!-- First Section -->
## Team Details
<details>
  <summary>Detail</summary>

  > Semester: 3rd Sem B. Tech. CSE

  > Section: S1

  > Team : 20 


  > Member-1: 221CS111 , Arjun R , arjun.221cs111@nitk.edu.in , 9606236240

  > member-2: 221CS127 , Hari Hardhik , harihardhik.221cs127@nitk.edu.in , 9036242637

  > Member-3: 221CS148 , Samrudh M , samrudhm.221cs148@nitk.edu.in , 8088440953
</details>

<!-- Second Section -->
## Abstract
<details>
  <summary>Detail</summary>
  
  > This project introduces a Smart Dustbin system designed to automate waste segregation, addressing the environmental challenges posed by inefficient waste management practices. Traditional methods of sorting waste are labour-intensive and prone to error, leading to increased landfill waste. The motivation behind this project is to promote responsible waste management by efficiently separating recyclable and non-recyclable materials, reducing the environmental impact of waste disposal, and streamlining waste collection operations. <br/> <br/> The unique contribution of this system lies in its use of LEDs and two level sensors to identify and segregate recyclable items in real-time. Additionally, it adapts to local recycling guidelines, ensuring its effectiveness in various geographical locations. We have used the LEDs adroitly to display the bin capacity. The model remains impeccable at its job.
</details>

<!-- Third Section -->
## Working
<details>
  <summary>Detail</summary>

  > The smart bin has been ingeniously designed to tackle the challenge of waste segregation. With a strong emphasis on environmental sustainability and efficient recycling, this innovative system comprises two distinct compartments within the bin, each dedicated to handling specific types of waste: one for plastic waste and the other for non-plastic waste, including paper and cardboard. The reason for this segregation is that these materials follow separate recycling methods, necessitating a reliable and automated process for differentiation.<br/> <br/> 
Upon the disposal of a waste item into the smart bin, a highly sensitive infrared sensor immediately springs into action. This sensor plays a pivotal role in initiating the subsequent phases of the waste management process. It detects the incoming object and activates a sophisticated platform within the bin, where the waste is placed. This platform is equipped with soil sensors designed to assess the moisture content of the waste. This moisture data is crucial in distinguishing between plastic and non-plastic materials.<br/> <br/> 
The soil sensors provide an output of 1 if the waste is determined to be plastic and 0 if it is non-plastic. This binary output is then connected to a step motor, which orchestrates the movement of the platform. The step motor can rotate both clockwise and counter- clockwise based on the input received from the sensor. Depending on the sensor's determination, the platform efficiently drops the waste item
into the appropriate bin below, ensuring that plastic and non-plastic waste are separated effectively.<br/> <br/> 
The ingenuity of the system doesn't end here. To provide users and waste management personnel with real-time feedback on the bin's fill levels, the sensor output is also linked to a circuit that controls a series of LED lights. These LEDs illuminate every time a plastic item is deposited into the bin. The number of LEDs that light up serves as a visual indicator of how full each bin is. This makes it easy for those responsible for waste collection to identify which bin needs attention and timely emptying. Once a bin reaches its capacity, it can be cleared efficiently, thus optimizing waste management operations.<br/> <br/> 
Furthermore, this intelligent waste disposal system incorporates a routine maintenance feature. For example, if the smart bins are scheduled to be cleared daily at 6 am, a timer-controlled circuit is utilized to reset the LED lights back to zero at this specified time each day. This ensures a fresh start for monitoring bin fill levels and streamlines waste collection activities.<br/> <br/> 
For added convenience and flexibility, a reset button is also included in the design. This button allows for a manual reset of the LED lights at any time, regardless of the regular schedule. In cases where the bin has been cleared ahead of the scheduled time, the reset button can be used to reset the LED indicators, making the system adaptable to dynamic waste disposal needs.
In summary, the smart bin represents a remarkable leap forward in waste management technology. Its intelligent and automated features not only contribute to efficient waste segregation but also facilitate the optimization of waste collection operations, making it a valuable asset for environmentally conscious communities and organizations.<br/> <br/>
> <img width="589" alt="Screenshot 2023-11-15 at 12 01 15 PM" src="https://github.com/arjun-vegeta/T20_DDS-mini-project/assets/149392539/ba0c5ee9-f9fd-41d1-a8c9-7351ef7fb00d">

</details>

<!-- Fourth Section -->
## Project Abstract Diagram
<details>
  <summary>Detail</summary>

  > <img width="1003" alt="Screenshot 2023-11-15 at 12 01 02 PM" src="https://github.com/arjun-vegeta/T20_DDS-mini-project/assets/149392539/0c955f45-9f41-4ccb-9145-a51197ea62c3">

</details>


## Logisim Circuit Diagram
<details>
  <summary>Detail</summary>

  > ![T20-Logism-Snap](https://github.com/arjun-vegeta/T20_DDS-mini-project/assets/149392539/c908f1d0-4ccd-41f5-896c-741523973e35)

</details>

<!-- Fifth Section -->
## Verilog Code
<details>
  <summary>Detail</summary>

  >   

    module T20_counter(clk, rst, count);
    input wire clk, rst;
    output reg [2:0]count = 0;

    always@ (posedge clk) 
        begin
            if(rst)
                count <= 0;
            else if (count == 3'b111)
                count <= 0;
            else 
                count <= count + 1'b1;
        end
    endmodule



Testbench:

    `include "T20_counter.v"
     module T20_counter_tb;
    
    reg rst, user_input;
    wire [2:0]plastic_count;

    counter c1(user_input, rst, plastic_count);

    initial
        begin
            $dumpfile("T20_counter.vcd");
            $dumpvars(0, T20_counter_tb);

            rst = 0;
            user_input = 0;
            
            repeat(10)
                begin
                    repeat(10)
                        begin
                            $monitor("%b", user_input);
                            user_input = {$random} % 2;
                            #2;
                        end 
                end
        end
    endmodule

</details>



