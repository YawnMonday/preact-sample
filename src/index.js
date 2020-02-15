import { h, render } from "preact";

/**
 *
 * @param {props} props
 * @param {state} state
 */
const Hello = ({ }, { }) => <div>Hello Preact</div>;

document.addEventListener("DOMContentLoaded", () => {
    render(
        <Hello />,
        document.getElementById("mount")
    );
});