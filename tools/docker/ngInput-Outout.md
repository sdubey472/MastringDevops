## A tool to exchange data


### First of all, the idea of Input and Output is to exchange data between components. They are a mechanism to send/receive data from one component to another.

<br>

### _Input is used to receive data in whereas Output is used to send data out. Output sends data out by exposing event producers, usually EventEmitter objects._

So when you see code like this


```
@Component({
  selector: 'todo-item',
  ...
})
export class TodoItemComponent {
  @Input()  item
  @Output() onChange = new EventEmitter()
}
```
