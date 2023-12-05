import { LightningElement, track, wire, api } from 'lwc';

export default class AdminPanel extends LightningElement {


    @track currentStepRequestIndicator = "1";
    error = false;




    connectedCallback() {
        // Use setTimeout to delay the execution of a function by 3000 milliseconds (3 seconds)
        setTimeout(() => {
            this.handleDelayedExecution();
        }, 3000);
    }

    handleDelayedExecution() {
        this.template.querySelector('.top-div').style.display = 'none';
        this.template.querySelector('.tagline-text').style.display = 'none';
        this.template.querySelector('.shopiforce-logo').style.transition = 'transform 1.3s ease-in-out, width 1.3s ease-in-out';
        this.template.querySelector('.shopiforce-logo').style.transform = 'translateY(-18vh) scale(0.8)';
        // Listen for the 'transitionend' event on the shopiforceLogo element
        this.template.querySelector('.shopiforce-logo').addEventListener('transitionend', () => {
            // Set the transition and opacity for smoothly making fieldsAndBar visible
            this.template.querySelector('.fieldsandbar').style.opacity = '0';
            
            this.template.querySelector('.bottom-div').style.height='10vh';
            this.template.querySelector('.fieldsandbar').style.display = 'block';
            this.template.querySelector('.fieldsandbar').style.transition = 'opacity 0.5s ease-in-out';
            this.template.querySelector('.fieldsandbar').style.opacity = '1';
        
        }, { once: true }); // Use { once: true } to ensure the event listener is removed after it's triggered
    }
}