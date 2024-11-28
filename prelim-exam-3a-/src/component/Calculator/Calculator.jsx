import React, { useReducer, useCallback } from 'react';
import { useDebounce } from 'use-debounce';
import './Calculator.css';

const initialState = {
  num1: '',
  num2: '',
  result: null,
};

function reducer(state, action) {
  switch (action.type) {
    case 'SET_NUM1':
      return { ...state, num1: action.payload };
    case 'SET_NUM2':
      return { ...state, num2: action.payload };
    case 'SET_RESULT':
      return { ...state, result: action.payload };
    default:
      return state;
  }
}

function Calculator() {
  const [state, dispatch] = useReducer(reducer, initialState);
  const [debouncedNum1] = useDebounce(state.num1, 500);
  const [debouncedNum2] = useDebounce(state.num2, 500);

  const handleCalculate = useCallback((operation) => {
    const number1 = parseFloat(debouncedNum1);
    const number2 = parseFloat(debouncedNum2);
    let res;

    switch (operation) {
      case 'add':
        res = number1 + number2;
        break;
      case 'subtract':
        res = number1 - number2;
        break;
      case 'multiply':
        res = number1 * number2;
        break;
      case 'divide':
        res = number2 !== 0 ? number1 / number2 : 'Error';
        break;
      default:
        return;
    }

    dispatch({ type: 'SET_RESULT', payload: res });
  }, [debouncedNum1, debouncedNum2]);

  return (
    <div className="calculator-container">
      <h3>Calculator</h3>
      <input
        type="number"
        value={state.num1}
        onChange={(e) => dispatch({ type: 'SET_NUM1', payload: e.target.value })}
        placeholder="Number 1"
        className="calculator-input"
      />
      <input
        type="number"
        value={state.num2}
        onChange={(e) => dispatch({ type: 'SET_NUM2', payload: e.target.value })}
        placeholder="Number 2"
        className="calculator-input"
      />
      <div className="calculator-buttons">
        <button onClick={() => handleCalculate('add')} className="calculator-button">+</button>
        <button onClick={() => handleCalculate('subtract')} className="calculator-button">-</button>
        <button onClick={() => handleCalculate('multiply')} className="calculator-button">*</button>
        <button onClick={() => handleCalculate('divide')} className="calculator-button">/</button>
      </div>
      <div className="result-container">
        <input
          type="text"
          value={state.result !== null ? state.result : ''}
          readOnly
          className="result-input"
          placeholder="Result"
        />
      </div>
    </div>
  );
}

export default Calculator;
